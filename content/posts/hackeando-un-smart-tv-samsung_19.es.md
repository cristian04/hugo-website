---
title: 'Hackeando un Smart TV - Parte 3'
date: 2013-10-20T17:59:00.002+13:00
draft: false
slug: 'Hackeando un Smart TV Samsung (UN46EH5300G) Parte 3'
externalLink: ""
series: ['hackeando tv samsung']
tags: [tutorial, smart tv, hack, samsung, pvr, hacking]
---

Bueno, por ultimo voy a mostrarle algunas cosas interesantes que encontré con respecto al firmware del tv y algunos links.  

{{% notice warning %}}
Entrar o cambiar la configuración en el menú de servicio sin entender el funcionamiento puede causar daños permanentes en tu televisor. Accede a este menú sólo si estás calificado y capacitado para hacer trabajos de reparación de televisores.
{{% /notice %}}

La ultima version disponible para el SmartTV al dia de hoy es [T-MST10PIBRC](http://downloadcenter.samsung.com/content/FM/201310/20131016121138905/T-MST10PIBRC.exe)

Como pueden ver, el archivo es un .EXE que descomprime una carpeta, vamos a analizar que es lo que tenemos aqui:

<p align="center">
  <img src="http://2.bp.blogspot.com/-PEqlRDOvT_E/UmNhJQoU3XI/AAAAAAAAWHc/YLcGYkjxGGE/s1600/Pantallazo-4.png)" width="100%"/>
</p>

Ahora vamos a enfocarnos en dos archivos .IMG. Para saber que es lo que tiene un archivo podemos ejecutar el comando file en linux:  

<p align="center">
  <img src="http://1.bp.blogspot.com/-JML-ndyaWm4/UmNhqO7j8fI/AAAAAAAAWHk/1csVyhIlG0E/s1600/Pantallazo-Terminal.png" width="100%"/>
</p>

{{% notice tip %}}
Tambien podemos usar el comando **binwalk** que nos muestra mas info, analizando el archivo integramente
{{% /notice %}}

Ahora que conocemos el sistema de archivo de cada imagen, podemos montarlo haciendo lo siguiente:  

<p align="center">
  <img src="http://4.bp.blogspot.com/-HOtTd54x0kc/UmNigsxKrCI/AAAAAAAAWHs/ZhBRXt2WMxM/s1600/Pantallazo-Terminal-1.png" width="100%"/>
</p>

 Ahora, pueden darse una mirada por los archivos que estan en esas carpetas. Quizas encuentren algo interesante ;)  
  
Les dejo dos links que me gustaron:  
  

1.  [http://www.samygo.tv/](http://www.samygo.tv/)
2.  [http://marcoramilli.blogspot.com.ar/2013/05/firmware-hacking-samsung-smart-tv-turn.html](http://marcoramilli.blogspot.com.ar/2013/05/firmware-hacking-samsung-smart-tv-turn.html)

Saludos!

---
### Comments:
#### hola, tenes idea si hay alguna forma (mediante hac...
[Mario Jinkis](https://www.blogger.com/profile/05186251327899676311 "noreply@blogger.com") - <time datetime="2014-06-02T13:04:29.871+12:00">Jun 0, 2014</time>

hola, tenes idea si hay alguna forma (mediante hack supongo) de poner aire+cable en la seleccion de antena? ya que este tele podes elegir cablo o aire, no los dos al mismo tiempo. O sea puedo ver los canales de cable, pero si quiero ver con la antena digital por ejemplo tengo que cambiar en el menu anntena a aire (o a cable) para ver los otros canales.  
Gracias.
<hr />
#### Hola, tengo tv samsung ue50es6100, quiero conectar...
[david calderon vilches](https://www.blogger.com/profile/01743120990937675369 "noreply@blogger.com") - <time datetime="2014-09-15T02:03:47.113+12:00">Sep 0, 2014</time>

Hola, tengo tv samsung ue50es6100, quiero conectar auriculares por bluetooth(mod Philips shb 7000) sabe alguien como hacerlo?...gracias
<hr />
#### Me podéis vomo puedo calibrar la pantalla, le moví...
[grethel moran](https://www.blogger.com/profile/00123461500321083606 "noreply@blogger.com") - <time datetime="2015-04-26T17:34:27.011+12:00">Apr 0, 2015</time>

Me podéis vomo puedo calibrar la pantalla, le moví algo que no y ahora no se que hacer :(
<hr />
#### Me puedesdeccir que hace tu tv
[Misael h](https://www.blogger.com/profile/12935149158060090994 "noreply@blogger.com") - <time datetime="2015-08-10T12:05:31.198+12:00">Aug 0, 2015</time>

Me puedesdeccir que hace tu tv
<hr />
#### hola buenas una consulta tengo una tv samsung smar...
[Antonio Perez](https://www.blogger.com/profile/09353832817794142088 "noreply@blogger.com") - <time datetime="2015-08-27T21:02:50.036+12:00">Aug 4, 2015</time>

hola buenas una consulta tengo una tv samsung smart tvEU46EH5300  
hay alguna manera de activar o app para tener wifi direct .gracias
<hr />
#### hola buenas una consulta tengo una tv samsung smar...
[Antonio Perez](https://www.blogger.com/profile/09353832817794142088 "noreply@blogger.com") - <time datetime="2015-08-27T21:02:58.967+12:00">Aug 4, 2015</time>

hola buenas una consulta tengo una tv samsung smart tvEU46EH5300  
hay alguna manera de activar o app para tener wifi direct .gracias
<hr />
#### Hola tengo un smat tv LG cuando conecto el Netflix...
[Anonymous](https://www.blogger.com/profile/ "noreply@blogger.com") - <time datetime="2015-09-07T14:07:53.352+12:00">Sep 0, 2015</time>

Hola tengo un smat tv LG cuando conecto el Netflix me quedo sin Internet en los teléfonos computadoras evento en netflix
<hr />
#### Hola tengo un samsung smart UN46EH5300G me metí en...
[lucas font](https://www.blogger.com/profile/01674665271231471878 "noreply@blogger.com") - <time datetime="2015-10-03T15:13:41.602+13:00">Oct 5, 2015</time>

Hola tengo un samsung smart UN46EH5300G me metí en el menú oculto y me apreté por error AV Calibration y me quedo en failure y se ve la pantalla borrosa, oscura y rojiza. Alguien me puede dar una solución por favor? Muchas gracias.
<hr />
#### Hola. Mi hijo entro en el menu oculto de una smart...
[Fatima Rosales](https://www.blogger.com/profile/13791013563400706434 "noreply@blogger.com") - <time datetime="2015-11-10T03:48:00.039+13:00">Nov 1, 2015</time>

Hola. Mi hijo entro en el menu oculto de una smart tv samsung j6200 y desconfiguro todo. La imagen esta volteada. Esta en chino. El smart cub no sale. Desaparecio todo. Solo salen los canales y el menu de la television. Se conecta al wifi. Pero no tengo acceso a nada... Me pone algo de cambiar el front color option.
<hr />
#### Tendra ? La lleve al sat de samsung y me inquita s...
[Fatima Rosales](https://www.blogger.com/profile/13791013563400706434 "noreply@blogger.com") - <time datetime="2015-11-10T03:49:26.530+13:00">Nov 1, 2015</time>

Tendra ? La lleve al sat de samsung y me inquita saber que se estropeo. Es nuevita de una semana
<hr />
#### hola una consulta, mi smart tv 5300g no se me cone...
[mauro manzo](https://www.blogger.com/profile/09348751100406808557 "noreply@blogger.com") - <time datetime="2015-12-29T03:42:16.513+13:00">Dec 1, 2015</time>

hola una consulta, mi smart tv 5300g no se me conecta a internet ni wifi y tampoco por lan... el router lo reconoce pero no hay se{ñal de internet
<hr />
#### Hermano sin querer me puse a moles tar es menu ocu...
[Edward Rodriguez](https://www.blogger.com/profile/12619612901910752145 "noreply@blogger.com") - <time datetime="2016-01-03T16:26:40.746+13:00">Jan 0, 2016</time>

Hermano sin querer me puse a moles tar es menu oculyo samsun smart serie 5 y ahora no puedo sincronizar los canales de tv
<hr />
#### Hermano sin querer me puse a moles tar es menu ocu...
[Edward Rodriguez](https://www.blogger.com/profile/12619612901910752145 "noreply@blogger.com") - <time datetime="2016-01-03T16:27:03.501+13:00">Jan 0, 2016</time>

Hermano sin querer me puse a moles tar es menu oculyo samsun smart serie 5 y ahora no puedo sincronizar los canales de tv
<hr />
#### Me puedes pasar los archivos para calibrar la pant...
[Jorge Ramírez](https://www.blogger.com/profile/07771564213718488679 "noreply@blogger.com") - <time datetime="2016-02-07T18:06:35.409+13:00">Feb 0, 2016</time>

Me puedes pasar los archivos para calibrar la pantalla e}de una smartv samsung de 32" dse descdalibro el av calibration failure
<hr />
#### Amigo encontrarías las solución a tu problema? Yo ...
[Salustio René Culebro Díaz](https://www.blogger.com/profile/12942526294773170749 "noreply@blogger.com") - <time datetime="2016-04-16T07:46:19.448+12:00">Apr 5, 2016</time>

Amigo encontrarías las solución a tu problema? Yo tengo el mismo detalle
<hr />
#### This comment has been removed by the author.
[German E. Torres H.](https://www.blogger.com/profile/09718767138752598177 "noreply@blogger.com") - <time datetime="2016-04-19T11:20:57.408+12:00">Apr 1, 2016</time>

This comment has been removed by the author.
<hr />
#### This comment has been removed by the author.
[German E. Torres H.](https://www.blogger.com/profile/09718767138752598177 "noreply@blogger.com") - <time datetime="2016-04-19T11:43:20.903+12:00">Apr 1, 2016</time>

This comment has been removed by the author.
<hr />
#### Solucionaste el problema?
[Víctor Jack](https://www.blogger.com/profile/11338337484344639670 "noreply@blogger.com") - <time datetime="2017-02-08T16:40:56.239+13:00">Feb 3, 2017</time>

Solucionaste el problema?
<hr />
#### Hola mi problema es que quiero conectar unos auric...
[Unknown](https://www.blogger.com/profile/00328163333062522965 "noreply@blogger.com") - <time datetime="2017-03-04T01:29:49.253+13:00">Mar 5, 2017</time>

Hola mi problema es que quiero conectar unos auricuraleres por la salida rca para tener sonido tanto en la tv como los auriculares a la vez pero no se puede por ser un smartv de los nuevos no se si se podría hacer en algun menú oculto? Gracias
<hr />
#### Hola. Tengo un smart samsung que tiene un receptor...
[Damián Slipoi](https://www.blogger.com/profile/04111417868276717975 "noreply@blogger.com") - <time datetime="2017-04-10T07:23:33.948+12:00">Apr 0, 2017</time>

Hola. Tengo un smart samsung que tiene un receptor wifi incorporado. El problema es que se conecta y desconecta todo el tiempo, lo que hace que cualquier video que esté viendo en youtube o netflix se corte. Estuve viendo foros y parece que hay mucha gente con este problema, que es algún tipo de defecto de fábrica. Yo además tengo un dongle wifi de samsung de un modelo más viejo. Mi pregunta es si desde el menú secreto hay una forma de deshabilitar el wifi integrado y poder usar el dongle usb de samsung. Gracias.
<hr />
