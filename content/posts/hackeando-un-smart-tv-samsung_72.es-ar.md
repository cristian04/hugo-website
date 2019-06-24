---
title: 'Hackeando un Smart TV Samsung (UN46EH5300G)'
date: 2013-10-20T17:14:00.004+13:00
draft: false
tags : [tutorial, smart tv, hack, samsung, hacking]
---

Hola a todos:  
Hoy les voy a mostrar algunas pruebas que estuve haciendo con un Smart TV de Samsung (que de SMART no tiene nada, tan solo es un thinclient)  
Disclaimer:  

*   Entrar o cambiar la configuración en el menú de servicio sin entender el funcionamiento puede causar daños permanentes en tu televisor. Accede a este menú sólo si estás calificado y capacitado para hacer trabajos de reparación de televisores.

  
Bueno, voy a comenzar por partes. Lo primero que hice al tener el tele fue conectarlo a internet y tirarle un nmap para ver que es lo que tenia por detras. Encontre esto:  

[![](http://1.bp.blogspot.com/-HhLR1ZtMk-w/UmNSuZuc94I/AAAAAAAAWGU/fRJm7zugnLs/s400/Pantallazo-2.png)](http://1.bp.blogspot.com/-HhLR1ZtMk-w/UmNSuZuc94I/AAAAAAAAWGU/fRJm7zugnLs/s1600/Pantallazo-2.png)

  

80/tcp   open  http

443/tcp  open  https

4443/tcp open  pharos

6000/tcp open  X11

7676/tcp open  imqbrokerd

9090/tcp open  zeus-admin

  

De todos esos puertos, con los que pude jugar son el 80 y el 7676. Para el resto todavia estamos trabajando en encontrar que son y que tocar ;)  
  
El televisor usa el protocolo uPNP, por lo que si utilizamos alguna tool de sniffing, podemos encontrar muchas cosas con las cuales interactuar en nuestro TV.  
  
En linux tenemos uPNP Inspector (hecha en Python) y utilizando esta tool podemos obtener una lista de eventos y métodos que expone nuestro televisor, como así también enviar y recibir comandos:  

[![](http://2.bp.blogspot.com/--0B8djarp9A/UmNYbMoQwbI/AAAAAAAAWGk/BivSXRhs0YU/s320/Pantallazo-UPnP+Inspector.png)](http://2.bp.blogspot.com/--0B8djarp9A/UmNYbMoQwbI/AAAAAAAAWGk/BivSXRhs0YU/s1600/Pantallazo-UPnP+Inspector.png)

  

[![](http://3.bp.blogspot.com/-FzhG5G2chi4/UmNYmJozEjI/AAAAAAAAWGs/PFf19F7ljzg/s320/Pantallazo-Invoke+Action+SetVolume.png)](http://3.bp.blogspot.com/-FzhG5G2chi4/UmNYmJozEjI/AAAAAAAAWGs/PFf19F7ljzg/s1600/Pantallazo-Invoke+Action+SetVolume.png)

  
Con eso, estamos seteando un nivel de volumen al televisor, sin usar nuestro control remoto y mediante nuestra computadora. De esta manera, tambien podemos hacer nuestro cliente mobile para manejar el televisor desde nuestro celular  
  
Hasta aquí una primera parte  
  

Parte 1 [https://blog.cristianmarquez.me/2013/10/hackeando-un-smart-tv-samsung.html](https://blog.cristianmarquez.me/2013/10/hackeando-un-smart-tv-samsung.html)

Parte 2 [https://blog.cristianmarquez.me/2013/10/hackeando-un-smart-tv-samsung_20.html](https://blog.cristianmarquez.me/2013/10/hackeando-un-smart-tv-samsung_20.html)

Parte 3 [https://blog.cristianmarquez.me/2013/10/hackeando-un-smart-tv-samsung_8226.html](https://blog.cristianmarquez.me/2013/10/hackeando-un-smart-tv-samsung_8226.html)