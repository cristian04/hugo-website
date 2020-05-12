---
title: 'Android Maven Plugin'
date: 2013-09-20T02:32:00.003+12:00
draft: false
slug: 'Android Maven Plugin'
externalLink: ""
series: []
tags: [tutorial, android-maven-plugin, Android, maven]
---

<img src="http://3.bp.blogspot.com/-dRn_mySFEJs/UjsKvliZrfI/AAAAAAAAV-E/ZY2pKn558xc/s1600/Google+Image+Result+for+httpwww.itservices247.atwp-contentuploads201205a_2013-09-19_11-30-44.png" alt="Android" style="float:left; width:280px; padding:10px;"/>

Después de la pequeña introducción que hice [aquí](/es/posts/android-qa-automation/), les sigo comentando algunas cosas sobre __android-maven-plugin__  

Una de las ventajas al trabajar con maven son los arquetipos (archetypes) Un arquetipo es una plantilla de proyectos definido por patrones o modelos de proyectos similares.

Usar un archetype permite una manera rápida y consistente de desarrollar, mediante el uso buenas practicas y recomendaciones.
 
Los archetypes que tenemos disponibles para Android usando el plugin son los siguientes:  

```
- __ANDROID-QUICKSTART-ARCHETYPE__

    Este arquetipo genera una aplicacion android lista para ser ejecutada en un dispositivo android (emulador o real)

- __ANDROID WITH TEST ARCHETYPE__

    Este arquetipo genera un projecto con varios modulos:

    1. un `pom` padre
    2. un modulo conteniendo una aplicación android
    3. un modulo de pruebas para la aplicación (test de integracion)

- __ANDROID-RELEASE ARCHETYPE__

    Este arquetipo extiende al anterior, agregando el manejo de releases.

- __ANDROID-LIBRARY-QUICKSTART__

    Este arquetipo genera una libreria android lista para ser utilizada por otro proyecto android.
```
# Manos a la obra: 

Empecemos a desarrollar una aplicación android desde 0 usando android-maven-plugin :)

## Requisitos

- Tener instalado **y bien configurado** ADT (variables de entorno, path, etc)
- Tener instalado **y bien configurado** maven 3.0.3 (hasta donde sé había algunos problemas con 3.1)

Para el proximo ejemplo, queremos desarrollar dos proyectos:

- La aplicacion demo y
- Los tests para la aplicacion.

Para ello, vamos a utilizar el arquetipo que les mencione anteriormente: __ANDROID WITH TEST ARCHETYPE__

Para generar un proyecto desde 0 con maven, debemos ejecutar lo siguiente:

```bash
> mvn archetype:generate -DarchetypeArtifactId=android-with-test \\  
>   -DarchetypeGroupId=de.akquinet.android.archetypes \\  
>   -DarchetypeVersion=1.0.11 \\  
>   -DgroupId=com.foo.bar \\  
>   -DartifactId=my-android-project \\  
>   -Dpackage=com.foo.bar.android
```

Recuerden cambiar  los valores de **groupId**, **artifactId** y **package** por los de su preferencia o empresa.  

<p align="center">
 <img src="http://2.bp.blogspot.com/-TTa9XOG073w/UjsHmN_ztfI/AAAAAAAAV9I/hitX_dpZMq4/s1600/CWindowssystem32cmd.exe_2013-09-19_11-15-24.png" width="100%"/>
</p>

<p align="center">
<img src="http://4.bp.blogspot.com/-pnLxVtT-RFU/UjsHzU5s5dI/AAAAAAAAV9Q/gnjRg-liuQo/s1600/CWindowssystem32cmd.exe_2013-09-19_11-15-39.png" width="100%"/>
</p>

Como se puede observar en las imagenes, maven nos generó el proyecto y estamos listos para trabajar. En el caso de tener algun emulador o device corriendo, podemos probar nuestra aplicacion ejecutando  

```bash
> mvn clean install
```

<p align="center">
<img src="http://2.bp.blogspot.com/-4SkT5zipUks/UjsI45f1NOI/AAAAAAAAV9k/BwhT41u9BU8/s1600/CWindowssystem32cmd.exe_2013-09-19_11-17-28.png" width="100%"/>
</p>

<p align="center">
<img src="http://1.bp.blogspot.com/-SO1SfChXyVI/UjsIiaLLBUI/AAAAAAAAV9c/fdNEQ3dIu_A/s1600/CWindowssystem32cmd.exe_2013-09-19_11-16-02.png" width="100%"/>
</p>

<p align="center">
<img src="http://2.bp.blogspot.com/-DRK2QoBGlAQ/UjsI-sLjnUI/AAAAAAAAV9s/qnatR31gQFQ/s1600/CWindowssystem32cmd.exe_2013-09-19_11-17-15.png" width="100%"/>
</p>

<p align="center">
<img src="http://2.bp.blogspot.com/-_EAuxBqFDN0/UjsJtf_3BgI/AAAAAAAAV94/tyKelcZTIdo/s1600/Screenshot_2013-09-19-11-24-29.png" width="100%"/>
</p>
