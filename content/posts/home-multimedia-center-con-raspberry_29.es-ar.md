---
title: 'Home multimedia center con raspberry'
date: 2014-08-29T15:45:00.003+12:00
draft: false
tags : [xbmc, transmission, openelec, torrent, linux, DLNA, proyectos, raspberry pi]
---

Hola!  
Hoy vuelvo a escribirles para presentar un proyecto que armé utilizando una Raspberry Pi y un par de componentes más.  
Como ya les habia comentado un poco en el post de [Media Center Casero](https://blog.cristianmarquez.me/2014/06/media-center-casero-utilizando-upnpdlna.html), tuve la idea de utilizar una Raspberry para eso.  
El resultado de hacer esto es el siguiente:  

  
  
El listado de componentes que estoy usando es el siguiente:  
  

1.  Raspberry Pi Model B+ 
2.  8GB MicroSD Kingston
3.  WifiDongle Usb
4.  Fuente
5.  Cable HDMI 

[![](http://1.bp.blogspot.com/-jGIE2YN0qCc/U__z-euT2qI/AAAAAAAAaNM/g5kl5opdm_A/s1600/10612677_10204486424943415_6644031092131341174_n.jpg)](http://1.bp.blogspot.com/-jGIE2YN0qCc/U__z-euT2qI/AAAAAAAAaNM/g5kl5opdm_A/s1600/10612677_10204486424943415_6644031092131341174_n.jpg)

  

A este Kit lo compre via mercadolibre [aquí](http://articulo.mercadolibre.com.ar/MLA-519664005-kit-raspberry-pi-b-completo-wifi-adapt-microsd-fuente--_JM#redirectedFromParent)

  
  
Por otra parte, ya disponía de lo siguiente:  
  

1.  TV Samsung UN46F6100
2.  HDD 2TB SATA2
3.  HDD Enclosure USB (Una carcasa para conectar el disco SATA por USB)

  
La conexión fué fácil:  
  

1.  El TV conectado por HDMI a la Raspberry
2.  El HDD conectado por USB a la Raspberry
3.  La Raspberry con Internet via WiFi
4.  SdCard como boot de OpenElec

### Instrucciones:

1.  Instalar openelec en su raspberry
2.  Instalar los plugins que consideren necesarios.
3.  Mover /storage a un disco USB
4.  Configurar su router para que puedan entrar desde afuera.
5.  Leer este link donde se explica un poco mas sobre todo esto: [http://www.raspberrypi.org/forums/viewtopic.php?t=60382 ](http://www.raspberrypi.org/forums/viewtopic.php?t=60382%C2%A0)

### Proxima version:

La idea es meterle boblight y un par de leds para hacer un ambilight. El unico problema es que no consigo tiras de leds o pixel led inteligentes en Argentina :( 

El resultado seria algo asi:

  

  

_Que lindo es el software y hardware libre!_  
  
Nota importante: El televisor no soporta el protocolo Anynet+ o CEC por lo que no puedo manejar XBMC desde el control remoto del tele; tengo que utilizar el celular o una computadora :(