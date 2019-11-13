---
title: 'Home multimedia center con raspberry'
date: 2014-08-29T15:45:00.003+12:00
draft: false
slug: 'Home multimedia center con raspberry'
externalLink: ""
series: []
tags: [xbmc, transmission, openelec, torrent, linux, DLNA, proyectos, raspberry pi]
---

Hola!  
Hoy vuelvo a escribirles para presentar un proyecto que armé utilizando una Raspberry Pi y un par de componentes más.  
Como ya les habia comentado un poco en el post de [Media Center Casero](/es/posts/media-center-casero-utilizando-upnp/dlna/), tuve la idea de utilizar una Raspberry para eso.

El resultado de hacer esto es el siguiente:

{{<youtube d_uf0q2u8SU >}}

# Componentes: 
  
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

{{<youtube MabTD34yeso >}}


_Que lindo es el software y hardware libre!_  

{{% notice note %}}
El televisor no soporta el protocolo Anynet+ o CEC por lo que no puedo manejar XBMC desde el control remoto del tele; tengo que utilizar el celular o una computadora :(
{{% /notice %}}

---
### Comments:
#### Muy bueno Cristhian!
[Adrián donatello](https://www.blogger.com/profile/09643091600208029077 "noreply@blogger.com") - <time datetime="2014-09-07T05:15:19.790+12:00">Sep 6, 2014</time>

Muy bueno Cristhian!
<hr />
#### Muchas gracias!
[Cristian Alberto Marquez Russo](https://www.blogger.com/profile/02333717952816180937 "noreply@blogger.com") - <time datetime="2014-09-13T10:05:20.601+12:00">Sep 5, 2014</time>

Muchas gracias!
<hr />
#### Hola, hice lo mismo, y le puse openelec con un don...
[susana cynthia](https://www.blogger.com/profile/10547491766983335693 "noreply@blogger.com") - <time datetime="2014-10-17T15:44:33.945+13:00">Oct 4, 2014</time>

Hola, hice lo mismo, y le puse openelec con un dongle wifi realtek, funciona perfecto, encima se conecta a cualquier tv lcd o análogo! Mi duda es si necesita antivirus, sabes algo? Gracias
<hr />
#### No. Linux no necesita antivirus
[Cristian Alberto Marquez Russo](https://www.blogger.com/profile/02333717952816180937 "noreply@blogger.com") - <time datetime="2014-11-19T06:45:19.954+13:00">Nov 2, 2014</time>

No. Linux no necesita antivirus
<hr />
