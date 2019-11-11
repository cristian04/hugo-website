---
title: 'Android QA Automation Architecture 2'
date: 2014-03-18T07:29:00.003+13:00
draft: false
slug: 'Android QA Automation Architecture 2'
externalLink: ""
series: []
tags: [tutorial, jenkins, integracion continua, Android]
---

[![](http://3.bp.blogspot.com/-KUz-BCeZh3Q/Uyc17lTIF_I/AAAAAAAAWys/Wl9jDgeGZ2o/s1600/header.png)](http://3.bp.blogspot.com/-KUz-BCeZh3Q/Uyc17lTIF_I/AAAAAAAAWys/Wl9jDgeGZ2o/s1600/header.png)

Los emuladores android son muy útiles a la hora de desarrollar y probar nuestras aplicaciones android, pero en muchos casos, debido a sus limitaciones, debemos recurrir a dispositivos reales.  

Entre estas limitaciones podemos encontrar la falta de sensores ( como NFC, bluetooth y Wifi), instrucciones específicas de procesador (en algunos celulares con microprocesador Intel) y el soporte para dispositivos USB.

Si bien podemos usar dispositivos reales para el desarrollo local, es muy importante poder contar con un entorno de integración continua que utilice los mismos dispositivos.

A continuación les muestro la arquitectura que armé para integración contínua con dispositivos android reales y Jenkins

  

  

  

![](http://4.bp.blogspot.com/-RBJ4Q-r3ox4/UyczCL75vRI/AAAAAAAAWyk/yq78hPGZuZs/s1600/android.jpg)

Arquitectura

Como pueden ver en el diagrama de arquitectura, el servidor con Jenkins tiene una conexión con los diferentes equipos. En este caso estoy utilizando tres con la misma version de android (api level 19) y diferentes vendors o marcas (HTC, Motorola y Samsung) 

Esta arquitectura puede cambiar con otros parámetros, por ejemplo utilizar equipos con diferentes api levels y vendors, tamaños de pantalla, etc.

Conexión
--------

La conexión entre los dispositivos y el servidor es llevada a cabo mediante ADB. Aquí tenemos dos opciones:

*   Mediante un cable usb conectado al servidor
*   A través de la red wifi, mediante el protocolo tcp/ip **(Recomendado)**

> **Tip:** Si tienen Jenkins en una máquina virtual, pueden probar mapear el puerto USB del driver de ADB a la máquina host.

 Para conectar el celular mediante wifi, tienen que activar **ADB sobre red**. Esta opción no está disponible en todos los dispositivos, pero existen aplicaciones que permiten hacerlo (necesitan ser root)  

[![](http://2.bp.blogspot.com/-_3rh_j5n_Js/Uyc5poTS_HI/AAAAAAAAWy4/hJhCFmefxI8/s1600/screenshot-20140317-144911.png)](http://2.bp.blogspot.com/-_3rh_j5n_Js/Uyc5poTS_HI/AAAAAAAAWy4/hJhCFmefxI8/s1600/screenshot-20140317-144911.png)

  

  

Una vez activada la opción, necesitamos conocer nuestra IP. Para ello entramos a la configuración WIFI.

[![](http://1.bp.blogspot.com/-kT4JOG0nCT4/Uyc6NHi-b8I/AAAAAAAAWzA/0ylZycSWcEs/s1600/device-2014-03-17-145915.png)](http://1.bp.blogspot.com/-kT4JOG0nCT4/Uyc6NHi-b8I/AAAAAAAAWzA/0ylZycSWcEs/s1600/device-2014-03-17-145915.png)

  

> **Tip**: Es muy importante usar una ip estática en los celulares que estén en Jenkins

Ahora podemos realizar la conexión:  

[![](http://4.bp.blogspot.com/-hvwqtRV06AQ/Uyc6btFdlJI/AAAAAAAAWzI/OF9j_7eQNJs/s1600/2014-03-17+15_09_29-Blogger_+CristianMarquez.com.ar+-+Crear+entrada.png)](http://4.bp.blogspot.com/-hvwqtRV06AQ/Uyc6btFdlJI/AAAAAAAAWzI/OF9j_7eQNJs/s1600/2014-03-17+15_09_29-Blogger_+CristianMarquez.com.ar+-+Crear+entrada.png)

  
De esta manera, ya tenemos conectado el celular con el servidor  
El procedimiento se tiene que repetir para todos los celulares que necesitemos conectar.  
  

Jobs
----

La configuración de los job es prácticamente la misma. Lo único que hay que tener en cuenta es deshabilitar los emuladores ( si tienen el plugin de android-emulator en jenkins)

También hay que seleccionar el dispositivo en el que queremos correr las tareas, de la siguiente manera:

[![](http://4.bp.blogspot.com/-TYr1kXbyalc/Uyc-70d00YI/AAAAAAAAWzU/eqtw8nkxQaM/s1600/2014-03-17+15_28_30-C__WINDOWS_system32_cmd.exe.png)](http://4.bp.blogspot.com/-TYr1kXbyalc/Uyc-70d00YI/AAAAAAAAWzU/eqtw8nkxQaM/s1600/2014-03-17+15_28_30-C__WINDOWS_system32_cmd.exe.png)

  

Ejemplo:
--------