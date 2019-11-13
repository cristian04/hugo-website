---
title: 'Hackeando un Smart TV - Parte 1'
date: 2013-10-20T17:14:00.004+13:00
draft: false
slug: 'Hackeando un Smart TV Samsung (UN46EH5300G)'
externalLink: ""
series: ['hackeando tv samsung']
tags: [tutorial, smart tv, hack, samsung, hacking]
---

Hola a todos:  
Hoy les voy a mostrar algunas pruebas que estuve haciendo con un Smart TV de Samsung (que de SMART no tiene nada, tan solo es un thinclient)

{{% notice warning %}}
Entrar o cambiar la configuración en el menú de servicio sin entender el funcionamiento puede causar daños permanentes en tu televisor. Accede a este menú sólo si estás calificado y capacitado para hacer trabajos de reparación de televisores.
{{% /notice %}}
  
Bueno, voy a comenzar por partes. Lo primero que hice al tener el tele fue conectarlo a internet y tirarle un nmap para ver que es lo que tenia por detras. Encontre esto:  

[![](http://1.bp.blogspot.com/-HhLR1ZtMk-w/UmNSuZuc94I/AAAAAAAAWGU/fRJm7zugnLs/s400/Pantallazo-2.png)](http://1.bp.blogspot.com/-HhLR1ZtMk-w/UmNSuZuc94I/AAAAAAAAWGU/fRJm7zugnLs/s1600/Pantallazo-2.png)

  
```
80/tcp   open  http
443/tcp  open  https
4443/tcp open  pharos
6000/tcp open  X11
7676/tcp open  imqbrokerd
9090/tcp open  zeus-admin
```
  

De todos esos puertos, con los que pude jugar son el 80 y el 7676. Para el resto todavia estamos trabajando en encontrar que son y que tocar ;)  
  
El televisor usa el protocolo uPNP, por lo que si utilizamos alguna tool de sniffing, podemos encontrar muchas cosas con las cuales interactuar en nuestro TV.  
  
En linux tenemos uPNP Inspector (hecha en Python) y utilizando esta tool podemos obtener una lista de eventos y métodos que expone nuestro televisor, como así también enviar y recibir comandos:  

[![](http://2.bp.blogspot.com/--0B8djarp9A/UmNYbMoQwbI/AAAAAAAAWGk/BivSXRhs0YU/s320/Pantallazo-UPnP+Inspector.png)](http://2.bp.blogspot.com/--0B8djarp9A/UmNYbMoQwbI/AAAAAAAAWGk/BivSXRhs0YU/s1600/Pantallazo-UPnP+Inspector.png)

  

[![](http://3.bp.blogspot.com/-FzhG5G2chi4/UmNYmJozEjI/AAAAAAAAWGs/PFf19F7ljzg/s320/Pantallazo-Invoke+Action+SetVolume.png)](http://3.bp.blogspot.com/-FzhG5G2chi4/UmNYmJozEjI/AAAAAAAAWGs/PFf19F7ljzg/s1600/Pantallazo-Invoke+Action+SetVolume.png)

  
Con eso, estamos seteando un nivel de volumen al televisor, sin usar nuestro control remoto y mediante nuestra computadora. De esta manera, tambien podemos hacer nuestro cliente mobile para manejar el televisor desde nuestro celular  
  
Hasta aquí una primera parte  
  
---
### Comments:
#### Hola tengo una samsung EH5300 quisiera saber como ...
[Alberto Rios](https://www.blogger.com/profile/08108199717019440100 "noreply@blogger.com") - <time datetime="2015-01-14T10:30:32.174+13:00">Jan 2, 2015</time>

Hola tengo una samsung EH5300 quisiera saber como puedo activar el pvr en modo hospitality. Te agradezco la colaboración
<hr />
#### Hola mi smart funciona solo que no esta disponible...
[Anonymous]( "noreply@blogger.com") - <time datetime="2015-05-01T08:03:50.994+12:00">Apr 4, 2015</time>

Hola mi smart funciona solo que no esta disponible la funcion de canales si funcionaba hasta que busque canales hd. Espero alguien me pueda ayudar. Gracias
<hr />
#### Hola. Que tal? Tengo un problema con un samsung EH...
[Natalia Costa](https://www.blogger.com/profile/09052975568941429923 "noreply@blogger.com") - <time datetime="2015-09-03T16:23:53.480+12:00">Sep 4, 2015</time>

Hola. Que tal? Tengo un problema con un samsung EH5300, cuando quiero ver canales de cable la imagen se ve difuminada y con colores muy oscuros. Alguien podría ayudarme? Desde ya muchas gracias
<hr />
#### Le movi y ahora no prendeee... que hagooo
[omar santos](https://www.blogger.com/profile/09755979950502447152 "noreply@blogger.com") - <time datetime="2015-09-11T18:09:13.280+12:00">Sep 5, 2015</time>

Le movi y ahora no prendeee... que hagooo
<hr />
#### Hey sabes como activar el control por voz en la se...
[Anonymous]( "noreply@blogger.com") - <time datetime="2015-10-03T08:22:17.765+13:00">Oct 5, 2015</time>

Hey sabes como activar el control por voz en la serie h6400 que viene desactivada de fabrica ???
<hr />
#### hola, tengo un led 3d de 55 pulgadas, no andaba el...
[Unknown](https://www.blogger.com/profile/05146786058097978650 "noreply@blogger.com") - <time datetime="2015-10-15T12:59:46.047+13:00">Oct 3, 2015</time>

hola, tengo un led 3d de 55 pulgadas, no andaba el 3d y lo reinicie, al iniciar y pedirme la configuracion se actualizo (firmware 1030) y ahora no me anda ningun contro remoto, a no ser que haya algun sub menu. alguien sabes como solucionarlo o como volver al firmware anterior. gracias!!!
<hr />
#### Buenas Tardes... tengo una un55f8000 y de pronto n...
[Nando](https://www.blogger.com/profile/05921083314415542558 "noreply@blogger.com") - <time datetime="2016-09-25T11:39:15.975+13:00">Sep 6, 2016</time>

Buenas Tardes... tengo una un55f8000 y de pronto netflix dejo de funcionar y cada vez que quiero abrir me sale el error "Open method fail" he intentado de todo y no hay manera de reiniciar la app ni restaurando la configuración de fábrica... por favor su ayuda gracias...!
<hr />
#### Hola: le di reset (Factory Reset) a una samsung tv...
[Anonymous]( "noreply@blogger.com") - <time datetime="2016-09-26T10:50:30.479+13:00">Sep 0, 2016</time>

Hola: le di reset (Factory Reset) a una samsung tv smart 5500 y ahora no aparece valida la posibilidad de emision (broadcasting) que es lo que debo hacer para volver a activarla nuevamente. En el soporte de Samsung no ayudan en lo mas minimo.  
gracias por ayudar
<hr />
#### prueba esto  
1.- Entra al menu oculto o de servi...
[un amigo]( "noreply@blogger.com") - <time datetime="2016-09-27T06:25:35.850+13:00">Sep 1, 2016</time>

prueba esto  
1.- Entra al menu oculto o de servicio (tv apagada presionas la siguiente secuencia: mute 1 8 2 power  
2.- Entra a la siquiente ruta: Control>Hotel Option>Hospitaly Mode  
3.- En esta ultima opción selecciona OFF  
4.- Regresa hasta el principio del menu y apaga la tele con Power... Enciendela normalmente y eso es todo.
<hr />
