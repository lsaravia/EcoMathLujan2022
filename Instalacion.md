---
output:
  pdf_document: default
  html_document: default
---
# Curso Sistemas Complejos en Ecología 2023 - UNLu 

## Modelando con Julia

### 1. Instalacion de Julia:

* La instalacion del lenguaje de programacion Julia es muy sencilla tanto en windows como un linux aqui les dejo el link

  https://julialang.org/downloads/platform/

* En linux hay distintas opciones pero despuede de descargar y descomprimir el archivo como explica en la página se puede crear un `symbolic link` 
  al directorio donde se instaló julia en mi caso `~/julia-1.9.0/bin/julia` a un directorio que ya este en el PATH `~/bin/julia`

```
>ln -s ~/julia-1.9.0/bin/julia ~/bin/julia

```

o tambien

```
>ln -s ~/julia-1.9.0/bin/julia /usr/local/bin/julia

```

* Para actualizar la version es lo mismo pero hay que cambiar el `symbolic link` a la carpeta nueva

```
>ln -sf ~/julia-1.9.1/bin/julia ~/bin/julia

```

* Inicialmente el lenguaje se instala como un REPL (read-eval-print-loop) que es una línea de comandos interactiva.


## 2. Instalar Visual Studio Code


Hay que ir a la pagina y descargar el instalador 

https://code.visualstudio.com/Download

Luego de instalar VSCode, hay que instalar la extensión para Julia, ir al boton de extensiones


Tipear Julia en la barra de busqueda y presionar `install` 


Aqui hay instrucciones detalladas https://www.julia-vscode.org/docs/stable/gettingstarted/



## 3. Instalar git y enlazar con github

1) Crear una cuenta de github en https://github.com/


1) Instalación de git local https://git-scm.com/book/es/v2/Inicio---Sobre-el-Control-de-Versiones-Instalaci%C3%B3n-de-Git

2) Configuración https://git-scm.com/book/es/v2/Inicio---Sobre-el-Control-de-Versiones-Configurando-Git-por-primera-vez

> ## El mail que se usa para git debe ser el mismo que se usó para la cuenta de github




