#
# Fuego en el bosque 2D
#

using Agents, Plots
import DrWatson: @dict

@agent forestFireAgent GridAgent{2} begin
    state::Symbol   # Si es Bosque, si es Fuego o si está quemado o vacio 
end

# Creando el area 
#
function initializeForestFire(; density = .6, dims = (100, 100), λv=.2, δv=.1, λf=.1, bf=0.0001, δf=20)
    space = GridSpace(dims, periodic = false)
    properties = @dict λv δv λf bf δf
    properties[:tick] = 0
    model = ABM(forestFireAgent, space;
                properties = properties)
    # populate the model with agents, adding equal amount of the two types of agents
    # at random positions in the model
    for position in positions(model)
        if rand() < density
            add_agent!(position, model, :V)               # :V vegetation, :F fire, :Ø burnt or empty
        else
            add_agent!(position, model, :Ø)               # :V vegetation, :F fire, :Ø burnt or empty
        end
    end
    return model
end


fb2D = initializeForestFire()

function model_step!(model)
    R = model.λv + model.δv + model.λf + model.bf + model.δf

    evals= nagents(model)* R 
    for i in 1:evals
        ragent = random_agent(model)
        y1 = rand()
        if y1 ≤ model.λv/R 
            #
            # toma un vecino y reproduce un V
            #
            if ragent.state== :V
                vecinos = collect(nearby_agents(ragent,model))
                ragent1 = rand(vecinos)
                if ragent1.state == :Ø
                    ragent1.state = :V
                end
            end
        elseif y1 ≤ (model.λv + model.δv) / R
            #
            # Muere el V actual
            #
            if ragent.state == :V
                ragent.state = :Ø
            end
        elseif y1 ≤ (model.λv + model.δv + model.λf) / R
            #
            # Se propaga F
            #
            if ragent.state == :F
                vecinos = nearby_positions(ragent,model)
                ragent1 = rand(vecinos)
                if ragent1.state == :V
                    ragent1.state = :F
                end
            end
        elseif y1 ≤ (model.λv + model.δv + model.λf + model.bf) / R 
            #
            # Se produce una ignición
            # 
            if ragent.state == :V
                ragent.state = :F
            end
        else
            #
            # Se extingue el F:
            #
            if ragent.state == :F
                ragent.state = :Ø
            end
        end
    end
    model.tick += 1
    
end

function forestFireColor(a::forestFireAgent)
    color = :green
    if a.state == :F
        color = :red
    elseif a.state == :Ø
        color = :black
    end
    color
end

forestFireShape(a::forestFireAgent)= :square
forestFireSize(a::forestFireAgent)= 3

plotkwargs = (
    ac = forestFireColor,
    am = forestFireShape,
    as = forestFireSize,
    aspect_ratio = 1,
    size = (600, 600),
    showaxis = false,
)

p = plotabm(fb2D; plotkwargs...)
step!(fb2D,dummystep,model_step!,10)
forest(a) = a.state == :V
fire(a) = a.state == :F
sitios(a) = a isa forestFireAgent
adata = [(forest, count, sitios), (fire, count, sitios)]

data, _ = run!(fb2D,dummystep,model_step!,10; adata)