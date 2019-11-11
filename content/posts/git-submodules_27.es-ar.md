---
title: 'Git submodules'
date: 2015-01-27T04:57:00.002+13:00
draft: true
slug: 'Git submodules'
externalLink: ""
series: []
tags: [tutorial, git, Ascentio, git submodules, svn]
---

Durante la preparación de la migración de SVN a GIT (Ver [Migrando de svn a git](https://blog.cristianmarquez.me/2015/01/migrando-de-svn-git_11.html)) me encontré con  que en varios proyectos habían varios **trunks**. El árbol de directorios era algo así:  
  
**Proyecto**  
├── tags  
└── trunk  
          └── test  
                    ├── branches  
                    ├── tags  
                    └── trunk  
  

Ignorando si esto es o no una buena práctica, probé de que manera hacer lo mismo utilizando GIT, lo que me llevo a probar **_git submodules._**

Aprovechando que **GitBlit** tiene soporte nativo para los **submodules**, armé lo siguiente:

### Armando los repositorios

En primer lugar, cree diferentes repositorios en **GitBlit** utilizando el separador **_/_** para definir la pertenencia al mismo proyecto. 

[![](http://2.bp.blogspot.com/-Sxps0jCgAFE/VMZd20vwoRI/AAAAAAAAchQ/daFXRxXnv-4/s1600/Selecci%C3%B3n_057.jpg)](http://2.bp.blogspot.com/-Sxps0jCgAFE/VMZd20vwoRI/AAAAAAAAchQ/daFXRxXnv-4/s1600/Selecci%C3%B3n_057.jpg)

  

Después de crear varios repositorios, la estructura me quedó de esta manera:

[![](http://2.bp.blogspot.com/-TKpoYRTlADw/VMZeiJYL-kI/AAAAAAAAchg/gtSBEv6YnX0/s1600/Selecci%C3%B3n_060.jpg)](http://2.bp.blogspot.com/-TKpoYRTlADw/VMZeiJYL-kI/AAAAAAAAchg/gtSBEv6YnX0/s1600/Selecci%C3%B3n_060.jpg)

  

Los repositorios "**A New Module**" y **" The New Hope"** serían los diferentes componentes de nuestro proyecto, y en **"Main Project"** estaría el árbol completo.

### Armando la estructura

Despues de hacer un **git clone** del repositorio **MainProject,** agregué los submodulos mediante los siguientes comandos:

1.  **_git submodule add ssh://cmarquez@git.ascentio.com.ar:29418/A-New-Project/ANewModule.git ANewModule_** Para agregar ANewModule
2.  _**git submodule add ssh://cmarquez@git.ascentio.com.ar:29418/A-New-Project/TheNewHope.git TheNewHope**_ Para agregar TheNewHope

[![](http://1.bp.blogspot.com/-hFtjkwTmDc8/VMZhWtdFl4I/AAAAAAAAchw/z_fZcqiEs2c/s1600/Selecci%C3%B3n_061.jpg)](http://1.bp.blogspot.com/-hFtjkwTmDc8/VMZhWtdFl4I/AAAAAAAAchw/z_fZcqiEs2c/s1600/Selecci%C3%B3n_061.jpg)

  

[![](http://4.bp.blogspot.com/-BZ1-xkRXBgs/VMZhWpvr7OI/AAAAAAAAchs/IMlHOzrETuI/s1600/Selecci%C3%B3n_062.jpg)](http://4.bp.blogspot.com/-BZ1-xkRXBgs/VMZhWpvr7OI/AAAAAAAAchs/IMlHOzrETuI/s1600/Selecci%C3%B3n_062.jpg)

  

La estructura de carpetas va quedando de la siguiente manera:

[![](http://1.bp.blogspot.com/-1cRpitISFdA/VMZh_PV0oWI/AAAAAAAAch8/eP2m1N940fY/s1600/Selecci%C3%B3n_063.jpg)](http://1.bp.blogspot.com/-1cRpitISFdA/VMZh_PV0oWI/AAAAAAAAch8/eP2m1N940fY/s1600/Selecci%C3%B3n_063.jpg)

  

  

  

  

  

  

  

Si hacemos un **GitStatus**, podemos ver que se generó un archivo .**gitmodules**

[![](http://3.bp.blogspot.com/-n6XszRyZJLY/VMZibGj83HI/AAAAAAAAciE/-6ztb0fj0qo/s1600/Selecci%C3%B3n_064.jpg)](http://3.bp.blogspot.com/-n6XszRyZJLY/VMZibGj83HI/AAAAAAAAciE/-6ztb0fj0qo/s1600/Selecci%C3%B3n_064.jpg)

Si comiteamos y pusheamos al servidor, vamos a poder ver lo siguiente a través de la interfaz web:

  

[![](http://4.bp.blogspot.com/-AcinKH2e7PU/VMZi3IJT3DI/AAAAAAAAciM/UUvkvQnA4WI/s1600/Selecci%C3%B3n_065.jpg)](http://4.bp.blogspot.com/-AcinKH2e7PU/VMZi3IJT3DI/AAAAAAAAciM/UUvkvQnA4WI/s1600/Selecci%C3%B3n_065.jpg)

  

Ahi podemos ver que las carpetas hacen referencia a los otros repositorios. De esta manera, podemos trabajar directamente en un modulo o en la carpeta que contiene todos los modulos, cada uno con un ciclo de evolución diferente.