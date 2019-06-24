---
title: 'Hackeando un Smart TV Samsung (UN46EH5300G) Parte 3'
date: 2013-10-20T17:59:00.002+13:00
draft: false
tags : [tutorial, smart tv, hack, samsung, pvr, hacking]
---

Bueno, por ultimo voy a mostrarle algunas cosas interesantes que encontré con respecto al firmware del tv y algunos links.  
Disclaimer:  

*   Entrar o cambiar la configuración en el menú de servicio sin entender el funcionamiento puede causar daños permanentes en tu televisor. Accede a este menú sólo si estás calificado y capacitado para hacer trabajos de reparación de televisores.

La ultima version disponible para el SmartTV al dia de hoy es [T-MST10PIBRC](http://downloadcenter.samsung.com/content/FM/201310/20131016121138905/T-MST10PIBRC.exe)  
Como pueden ver, el archivo es un .EXE que descomprime una carpeta, vamos a analizar que es lo que tenemos aqui:  
  

[![](http://2.bp.blogspot.com/-PEqlRDOvT_E/UmNhJQoU3XI/AAAAAAAAWHc/YLcGYkjxGGE/s400/Pantallazo-4.png)](http://2.bp.blogspot.com/-PEqlRDOvT_E/UmNhJQoU3XI/AAAAAAAAWHc/YLcGYkjxGGE/s1600/Pantallazo-4.png)

  
Ahora vamos a enfocarnos en dos archivos .IMG. Para saber que es lo que tiene un archivo podemos ejecutar el comando file en linux:  
  

[![](http://1.bp.blogspot.com/-JML-ndyaWm4/UmNhqO7j8fI/AAAAAAAAWHk/1csVyhIlG0E/s400/Pantallazo-Terminal.png)](http://1.bp.blogspot.com/-JML-ndyaWm4/UmNhqO7j8fI/AAAAAAAAWHk/1csVyhIlG0E/s1600/Pantallazo-Terminal.png)

  

> TIP: Tambien podemos usar el comando **binwalk** que nos muestra mas info, analizando el archivo integramente

 Ahora que conocemos el sistema de archivo de cada imagen, podemos montarlo haciendo lo siguiente:  

[![](http://4.bp.blogspot.com/-HOtTd54x0kc/UmNigsxKrCI/AAAAAAAAWHs/ZhBRXt2WMxM/s400/Pantallazo-Terminal-1.png)](http://4.bp.blogspot.com/-HOtTd54x0kc/UmNigsxKrCI/AAAAAAAAWHs/ZhBRXt2WMxM/s1600/Pantallazo-Terminal-1.png)

  
 Ahora, pueden darse una mirada por los archivos que estan en esas carpetas. Quizas encuentren algo interesante ;)  
  
Les dejo dos links que me gustaron:  
  

1.  [http://www.samygo.tv/](http://www.samygo.tv/)
2.  [http://marcoramilli.blogspot.com.ar/2013/05/firmware-hacking-samsung-smart-tv-turn.html](http://marcoramilli.blogspot.com.ar/2013/05/firmware-hacking-samsung-smart-tv-turn.html)

Saludos!

  

  

Parte 1 [https://blog.cristianmarquez.me/2013/10/hackeando-un-smart-tv-samsung.html](https://blog.cristianmarquez.me/2013/10/hackeando-un-smart-tv-samsung.html)

Parte 2 [https://blog.cristianmarquez.me/2013/10/hackeando-un-smart-tv-samsung_20.html](https://blog.cristianmarquez.me/2013/10/hackeando-un-smart-tv-samsung_20.html)

Parte 3 [https://blog.cristianmarquez.me/2013/10/hackeando-un-smart-tv-samsung_8226.html](https://blog.cristianmarquez.me/2013/10/hackeando-un-smart-tv-samsung_8226.html)