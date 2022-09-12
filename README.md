---
output:
  word_document: default
  html_document: default
---
# Curso de Ecología Matemática utilizando el lenguaje Julia

En este curso se pretende introducir al estudiante a algunos de los modelos matematicos mas 
utilizado en ecología, principalmente los modelos de ecuaciones diferenciales y modelos de 
procesos estocásticos, tambien se propone codificar y simular estos modelos utilizando el lenguaje
de programación Julia. Se le prestará especial atencion a la conceptualización del problema científico 
que origina la necesidad de modelización y las simplificaciones o supuestos necesarios para la 
implementación final del modelo. Con esto se espera que los estudiantes tengan un panorama completo
del proceso de modelización.

## Evaluación

La evaluación consistira en la presentación de un trabajo final con la conceptualización, resolución y 
simulación de un modelo basado en el tema de estudio del estudiante.

## Duracion y modalidad

La modalidad es virtual compuesta por

Clases teóricas 5 dias 3 hs
Clases Practicas/taller 5 dias 3 hs

Total 30 hs

## Requisitos

* Licenciatura en Cs. Biológicas, Ambientales, Agroecología, Física, Matemática y disciplinas afines.

* Conocimientos basicos de matemática (derivadas, integrales) y de algun lenguaje de programación

## Programa Analítico

* Definición de modelo. Variables, constantes, parámetros, tasas. El problema conceptual: definir objetivos. El problema de los datos: cuanto sabemos define el alcance y los supuestos del modelo. Predicción: utilización de escenarios para predecir comportamientos. Reformulación y ciclo de modelado: cambio de estructura, la importancia de la escala.

* Ecuaciones en diferencia para tiempo discreto. Ecuaciones diferenciales para tiempo continuo. Simulaciones probabilística con estocacidad demografica, para individuos discretos. Existencia de puntos de equilibrio estables e inestables. El modelo de crecimiento simple, crecimiento y muerte. El modelo logístico. 

* Introducción a la programación en Julia, vectores, escalares, gráficos simples, generación de números aleatorios, distribuciones de probabilidades. Generación de proyectos, funciones y depuración de codigo.


* Simulación de ecuaciones diferenciales por el método de Euler, simulación estocástica por el método exacto de Gillespie. Modelos de más de una variable, el ejemplo de fuego en el bosque. Definición de modelos por el metodo de estados y reacciones. Aproximación lineal de Taylor alrededor del punto de equilibrio para determinar estabilidad: el Jacobiano. 

* Simulación de modelos espacialmente explícitos: el bosque en 2 dimensiones. Agregar eventos al algoritmo de Gillespie: natalidad, mortalidad y dispersion. Ajuste de modelos a datos utilizando el metodo de computacion Bayesiana aproximada (ABC), establecimiento de distribuciónes a priori para parametros y ajuste preliminar basado en simulaciones del mismo modelo a estudiar. 

## Bibliografía

1. Black, A.J. & McKane, A.J. (2012). Stochastic formulation of ecological models and their applications. Trends Ecol. Evol., 27, 337–345 <https://drive.google.com/open?id=0BzexxHVKtpiAY05KZnJpMC10SWM>

1. Renshaw, E. (1993). Modelling biological populations in space and time. Cambridge University Press. Capitulo 2

1. Otto S.P. & Day T. (2007). A Biologist’s Guide to Mathematical Modeling in Ecology and Evolution. Princeton University Press. Chapter 13

1. Hastings A. & Gross L. (Editors). (2012) Encyclopedia of Theoretical Ecology. University of California Press. 

1. Durrett, R., and Levin, S. A. (1994). Stochastic spatial models: a user’s guide to ecological aplications. Philosophical transactions of the Royal Society of London. Series B 343, 329–350.

2. Berec, L. (2002). Techniques of spatially explicit individual-based models: construction, simulation, and mean-field analysis. Ecological Modelling 150, 55–81. doi:10.1016/S0304-3800(01)00463-X.
 
1. Hartig, F., Calabrese, J. M., Reineking, B., Wiegand, T., and Huth, A. (2011). Statistical inference for stochastic simulation models – theory and application. Ecology Letters 14, 816–827. doi:10.1111/j.1461-0248.2011.01640.x.

