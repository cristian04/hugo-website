---
title: 'Media center casero, utilizando upnp/dlna'
date: 2014-06-24T13:35:00.003+12:00
draft: false
slug: 'Media center casero, utilizando upnp/dlna'
externalLink: ""
series: []
tags: [tutorial, xbmc, linux, UPnP, DLNA, Android]
---

[![](http://4.bp.blogspot.com/-BXd6WvWMy9w/U6jMJ6lghuI/AAAAAAAAZhk/b3ro1XNlIOE/s1600/descarga.jpg)](https://images-blogger-opensocial.googleusercontent.com/gadgets/proxy?url=http%3A%2F%2F4.bp.blogspot.com%2F-BXd6WvWMy9w%2FU6jMJ6lghuI%2FAAAAAAAAZhk%2Fb3ro1XNlIOE%2Fs1600%2Fdescarga.jpg&container=blogger&gadget=a&rewriteMime=image%2F*)

Soy fanático de la música y el cine, de colgarme viendo varias películas en un dia. Usuario fiel de uTorrent y Transmission  

En mi casa tengo un disco duro externo de 2TB conectado a un SmartTV; en el guardo películas, música y otros archivos multimedia.  

Uno de los inconvenientes que tenia era que no podía acceder a mis archivos multimedia desde otro de mis dispositivos:
- Si bajaba alguna película nueva, tenia que desconectar el disco del televisor, copiar la película, bajar los subtítulos, conectar el disco al televisor y de ahí comenzar la reproducción. Si quería hacer lo mismo desde una computadora o notebook, tenia que repetir todos esos pasos. Un embole.  

Por otra parte, acceder a archivos en el disco desde el celular era imposible, hasta que armé mi red 100% compatible con UPNP.

[![](http://1.bp.blogspot.com/-yD2F5BIUp60/U6jMOZalVUI/AAAAAAAAZhs/mCj3W2QqJWo/s1600/dlna1.jpeg)](http://1.bp.blogspot.com/-yD2F5BIUp60/U6jMOZalVUI/AAAAAAAAZhs/mCj3W2QqJWo/s1600/dlna1.jpeg)

UPNP es un protocolo que permite compartir datos en una red de manera transparente (entre otras cosas) 

La arquitectura de red que armé es así:

[![](http://3.bp.blogspot.com/-aBPviHTaPGM/U6i2JGb5K2I/AAAAAAAAZgw/Y5_1ZZgVa2A/s1600/upnp.jpg)](http://3.bp.blogspot.com/-aBPviHTaPGM/U6i2JGb5K2I/AAAAAAAAZgw/Y5_1ZZgVa2A/s1600/upnp.jpg)

En primer lugar, tengo un router Linksys E900 300 MBPS con un firmware personalizado, basado en DDWRT. Este firmware me permite habilitar características avanzadas para mi red (vpn, firewall, etc) No obstante, no es necesario que ustedes lo hagan, ya que la mayoría de los routers soportan el protocolo uPnP.  

Como clientes tengo un SmartTV, celulares Android, la play 3 y la notebook. El software que utilizo varia segun el dispositivo:

- El Smart TV Samsung y la PS3 utilizan el software de fabrica
- Para los dispositivos android utilizo BubbleUPNP 
- Para las computadoras utilizo XBMC que es multiplataforma.

{{% notice note %}}
Tanto Bubble como XBMC permiten compartir la libreria local con otros dispositivos.
{{% /notice %}}

Veamos algunos ejemplos:

1- Smart TV mostrando los dispositivos que tenemos conectados por UPNP

[![](http://4.bp.blogspot.com/-XqIGnS82cGE/U6jHNWAFLAI/AAAAAAAAZhA/Fs5grjjhVRo/s1600/IMG_20140623_211454.jpg)](http://4.bp.blogspot.com/-XqIGnS82cGE/U6jHNWAFLAI/AAAAAAAAZhA/Fs5grjjhVRo/s1600/IMG_20140623_211454.jpg)

2- Desde la PS3

[![](http://4.bp.blogspot.com/-9U0rtv5u-wo/U6jHdaWDjdI/AAAAAAAAZhI/A8vBg1PiLeU/s1600/IMG_20140623_211554.jpg)](http://4.bp.blogspot.com/-9U0rtv5u-wo/U6jHdaWDjdI/AAAAAAAAZhI/A8vBg1PiLeU/s1600/IMG_20140623_211554.jpg)

  

3- Desde el celular

[![](http://4.bp.blogspot.com/-6DtkC6PNu0g/U6jHkrIizXI/AAAAAAAAZhQ/NnyJaDFdBTk/s1600/Screenshot_2014-06-23-21-13-10.png)](http://4.bp.blogspot.com/-6DtkC6PNu0g/U6jHkrIizXI/AAAAAAAAZhQ/NnyJaDFdBTk/s1600/Screenshot_2014-06-23-21-13-10.png)

  

Lo bueno de tooodo esto es que ahora puedo poner una pelicula que descargue en el hdd externo al televisor utilizando el celular. Tambien puedo pausar, avanzar o retroceder el video, como asi tambien aumentar o bajar el volumen. 

Ademas, habilité el servidor web de Transmission y uTorrent, lo que me permite agregar descargas sin estar al frente de la pc.

Ejemplos aqui:

[![](http://2.bp.blogspot.com/-upL4jIiiQD4/U6jLyPCqtYI/AAAAAAAAZhc/OrxfBy0o2kI/s1600/Pantallazo.png)](http://2.bp.blogspot.com/-upL4jIiiQD4/U6jLyPCqtYI/AAAAAAAAZhc/OrxfBy0o2kI/s1600/Pantallazo.png)

Espero que les sirva y puedan armar su red asi!

Saludos,
---
### Comments:
#### Buenas estoy montando un sistema similar en casa p...
[Juan Rosas](https://www.blogger.com/profile/03406344404924922382 "noreply@blogger.com") - <time datetime="2015-01-10T07:45:08.367+13:00">Jan 5, 2015</time>

Buenas estoy montando un sistema similar en casa pero al momento de reproducir una película o serie el audio y vídeo van bien pero no me traen los subtitulo, sabrías como solucionar eso?
<hr />
#### Tenes que instalar el plugin de subtitulos.
[Cristian Alberto Marquez Russo](https://www.blogger.com/profile/02333717952816180937 "noreply@blogger.com") - <time datetime="2015-01-10T08:20:07.422+13:00">Jan 5, 2015</time>

Tenes que instalar el plugin de subtitulos.
<hr />
