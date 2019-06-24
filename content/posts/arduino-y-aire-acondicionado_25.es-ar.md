---
title: 'Arduino y Aire acondicionado'
date: 2014-01-25T20:18:00.002+13:00
draft: false
tags : [tutorial, domotica, aire acondicionado, arduino, proyectos]
---

Sé que son pocos los que estan nerdeando en estas fechas, pero quizas a alguno le interese.

Estuve con la idea **no innovadora** de controlar el aire acondicionado usando un arduino, simulando los comandos que envía el control remota. La idea es poder prender, apagar y programar el aire desde cualquier lado mediante internet (y cuando digo internet digo desde el celular mientras vengo caminando muerto de calor)

La prueba de concepto que preparé trata de hacerlo de la siguiente manera:

### Primera parte: Capturando y guardando los comandos del control remoto.

[![](http://www.ladyada.net/wiki/lib/exe/fetch.php?hash=38859c&w=618&h=416&media=http%3A%2F%2Fwww.ladyada.net%2Fimages%2Fsensors%2Farduinopna4602.gif)](http://www.ladyada.net/wiki/lib/exe/fetch.php?hash=38859c&w=618&h=416&media=http%3A%2F%2Fwww.ladyada.net%2Fimages%2Fsensors%2Farduinopna4602.gif)La idea es usar un circuito para recibir todos los comandos que envia el control remoto del aire, y usarlos luego para la logica del codigo. Para eso, usé parte de un proyecto que encontré colgado [por aquí](http://www.ladyada.net/wiki/tutorials/learn/sensors/ir.html)

[![](https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRlWbDd4JblgFeuTGu9Q1I37J_oyitABKQI70AoDM2-hzHHEp_I1w)](https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRlWbDd4JblgFeuTGu9Q1I37J_oyitABKQI70AoDM2-hzHHEp_I1w)Una vez capturados  los eventos, armé una interfaz web usando jquery mobile, y la embebí en el arduino. Uno de los problemas con los que me encontré fue que el aire no interpretaba los valores que enviaba el emisor IR. La punta de la solucion la encontre en [este post](http://forum.arduino.cc/index.php?PHPSESSID=kqt4ejhh6mg2btq59lgefdtch7&topic=208279.msg1531237#msg1531237). Para la conectividad a internet, el arduino cuenta con un shield ethernet.

 [![](http://4.bp.blogspot.com/-dqqawxH461Y/UuNjdV-3ReI/AAAAAAAAWtU/SwYA-3nOZ1M/s1600/2014-01-25+04_10_14-Air+conditioner+controller+using+Ardunio+by+Cristian+Marquez.png)](http://4.bp.blogspot.com/-dqqawxH461Y/UuNjdV-3ReI/AAAAAAAAWtU/SwYA-3nOZ1M/s1600/2014-01-25+04_10_14-Air+conditioner+controller+using+Ardunio+by+Cristian+Marquez.png)