---
title: 'Migrando de SVN a GIT'
date: 2015-01-11T17:41:00.002+13:00
draft: false
slug: 'Migrando de SVN a GIT'
externalLink: ""
series: []
tags: [tutorial, relatos, git, proyectos]
---

[![](http://4.bp.blogspot.com/-VTOUfiovt7Y/VLH-mU-1OWI/AAAAAAAAcbM/C391xBLdIsE/s1600/subversion_VS_git.jpg)](http://4.bp.blogspot.com/-VTOUfiovt7Y/VLH-mU-1OWI/AAAAAAAAcbM/C391xBLdIsE/s1600/subversion_VS_git.jpg)

Como muchos de ustedes sabrán, cambiar el sistema de control de versiones en una empresa es un tema sensible, como lo es sugerir un nuevo lenguaje de programación, o la implementación de una nueva metodología.

En este post quiero comentar como hice para migrar de subversion (svn) a git en la empresa en la que estoy trabajando actualmente, de manera que mi experiencia les sirva.

En primer lugar, tratamos de usar **git-svn**, pero después de un par de pruebas descubrimos que por detrás era svn el que hacia todo y lo dejamos de usar.

Para poder arrancar con el desarrollo del proyecto, empezamos a trabajar en un repositorio git alojado en [gitlab](http://gitlab.com/), que permite tener repos privados. En nuestro servidor de integracion continua (jenkins) solamente usabamos SVN ya que era el sistema oficial de la empresa. El merge de git a svn lo haciamos manualmente y no había riesgos de perdida de código porque nadie trabajaba sobre el repo svn.

Ademas de un repositorio git, quería que la migración incluya algunas mejoras:  

- Autenticación con el servidor LDAP: el servidor svn no estaba sincronizado con ldap, por lo que teníamos contraseñas diferentes al correo, etc. 
- Soporte claves SSH
- Interfaz web: En svn tampoco teníamos una interfaz web en donde analizar el repo. Me interesaba tener algo al estilo github.

Después de un poco de investigación, decidí implementar **gitblit**, que ya incluía varias de estas mejoras.

# Arquitectura  

[![](http://2.bp.blogspot.com/-am25tY_c2rU/VLHy-NfHnKI/AAAAAAAAcas/1aXPyw4QJXY/s1600/untitled.png)](http://2.bp.blogspot.com/-am25tY_c2rU/VLHy-NfHnKI/AAAAAAAAcas/1aXPyw4QJXY/s1600/untitled.png)

La arquitectura que armé es la que se puede ver en la imagen. El servidor LDAP permite la autenticacion y autorizacion de los usuarios.

De esta manera, si necesitamos que el usuario cmarquez sea administrador de gitblit, solamente tenemos que agregar a dicho usuario al grupo que definamos.

Jenkins es nuestro servidor de integración continua, y solo necesita permiso de lectura del repositorio git. También autentica con LDAP.

# Gitblit 
Para tener gitblit en produccion, hice los siguientes pasos:  

- Instalacion: es bastante sencilla; solamente hay que bajar un zip de internet y ejecutar el archivo JAR que esta adentro.
- Configuracion y pruebas: tambien es sencilla, PERO se complica a la hora de utilizar LDAP ya que no hay mucha información de logging/debug disponible. (en sintesis, no sabes porqué no anda cuando tenes un error) 

{{% notice tip %}}
Wireshark es bastante util para analizar errores. Solo necesitan filtrar los paquetes usando el filtro LDAP.
{{% /notice %}}

- Documentacion: Hice una FAQ en un mediawiki interno, de manera que las personas que deseen migrar puedan saber las cosas basicas.
- Homologacion por IT: Le pedi a la gente de IT que incluya ese servidor para los backups periodicos y monitoreo.
- Migracion: Migramos lo que teniamos en gitlab al repo gitblit. Para hacerlo, cerramos todos los branches que estaban abiertos (integramos) y copiamos los archivos al nuevo repo. Decidí perder el historial porque no teniamos mucho.

  
El resultado... algo asi:  
  
[![](http://3.bp.blogspot.com/-7P420lLg27o/VLH-VAHtU9I/AAAAAAAAca8/pTBZ-wXFOvY/s1600/gitblit.png)](http://3.bp.blogspot.com/-7P420lLg27o/VLH-VAHtU9I/AAAAAAAAca8/pTBZ-wXFOvY/s1600/gitblit.png)

[![](http://1.bp.blogspot.com/-DONygmCjdEM/VLH-VKt4yYI/AAAAAAAAcbA/czBR9O6kJqE/s1600/Gitblit_10.png)](http://1.bp.blogspot.com/-DONygmCjdEM/VLH-VKt4yYI/AAAAAAAAcbA/czBR9O6kJqE/s1600/Gitblit_10.png)