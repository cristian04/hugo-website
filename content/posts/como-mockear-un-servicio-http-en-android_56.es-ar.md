---
title: 'Como mockear un servicio http en Android'
date: 2013-10-27T06:11:00.003+13:00
draft: false
tags : [tutorial, testing, automated testing, desarrollo, qa, testing automatizado de android en argentina, Android]
---

[![](http://1.bp.blogspot.com/-3-TPRd7SScA/TpvWkB6zSYI/AAAAAAAAJsk/jMcs_w7-KUs/s200/screenshot13.png)](http://1.bp.blogspot.com/-3-TPRd7SScA/TpvWkB6zSYI/AAAAAAAAJsk/jMcs_w7-KUs/s1600/screenshot13.png)Hace un tiempo encontré una librería que permite mockear servicios http en java y android, muy útil para cuando nuestro proyecto hace llamadas a consultas por WebServices y necesitamos mockearlos.  
Se llama [MockWebServer](http://code.google.com/p/mockwebserver/), y para utilizarla solamente debemos bajarla desde [el sitio oficial](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22com.google.mockwebserver%22) y dejar el jar en la carpeta **libs** de nuestro proyecto.  
ADT, por defecto, agrega todos los jars que estén en esa carpeta a nuestro buildpath.  
En [https://github.com/cristian04/mockwebserverdemo](https://github.com/cristian04/mockwebserverdemo) pueden encontrar un proyecto demo que prueba dos cosas: correr un test contra un servicio real y correr el mismo test contra un mock.  
A continuación un pequeño detalle para ese proyecto:  

[![](http://2.bp.blogspot.com/-NLFKATG40lY/UmvxxaN2GnI/AAAAAAAAWIQ/1GPhnTXAzTM/s640/Selecci%C3%B3n_009.png)](http://2.bp.blogspot.com/-NLFKATG40lY/UmvxxaN2GnI/AAAAAAAAWIQ/1GPhnTXAzTM/s1600/Selecci%C3%B3n_009.png)

El método **sendRequest()** se encarga de dos cosas. En primer lugar se conecta a una URL que es pasada por parámetro y obtiene la respuesta en formato JSON. En segundo lugar, realiza varias verificaciones con la respuesta: verifica el **status code** recibido y los datos de la respuesta.  
  

[![](http://3.bp.blogspot.com/-4ywtmGHNVV0/UmvzKScu4qI/AAAAAAAAWIc/buK5c61Ibo8/s640/Selecci%C3%B3n_011.png)](http://3.bp.blogspot.com/-4ywtmGHNVV0/UmvzKScu4qI/AAAAAAAAWIc/buK5c61Ibo8/s1600/Selecci%C3%B3n_011.png)

Este es un test básico que hace uso de la función que nombré anteriormente y que funciona contra el servicio real (en este caso, un sitio de jsontest.com)  

[![](http://4.bp.blogspot.com/-KGw6KflpXKc/Umv0fKPKDpI/AAAAAAAAWIw/S4JIdmUAjYI/s640/Selecci%C3%B3n_012.png)](http://4.bp.blogspot.com/-KGw6KflpXKc/Umv0fKPKDpI/AAAAAAAAWIw/S4JIdmUAjYI/s1600/Selecci%C3%B3n_012.png)

En este ultimo test, se pueden ver dos diferencias más: En primer lugar estamos creando una respuesta que el servidor nos tiene que devolver, dentro de MockResponse. Luego seteamos esa respuesta en el servidor y lo prendemos con **server.play()**.  
El método **sendRequest()** es quien hace la conexión al servidor web y quien realiza las verificaciones de la respuesta recibida.  
Por ultimo, para verificar si nuestro request estuvo OK, le pedimos a nuestro mock que nos brinde los request que enviamos, mediante **server.takeRequest()**. Con esto podemos verificar si nuestro cliente http envió lo que realmente queríamos, verificar si el método http es correcto, si los headers están OK, si los parámetros están OK, etc.  
  

[![](http://1.bp.blogspot.com/-2S3OimTuZR0/Umv3qHxxcvI/AAAAAAAAWI8/CfTJ3UYUyKU/s320/Selecci%C3%B3n_013.png)](http://1.bp.blogspot.com/-2S3OimTuZR0/Umv3qHxxcvI/AAAAAAAAWI8/CfTJ3UYUyKU/s1600/Selecci%C3%B3n_013.png)