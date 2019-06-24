---
title: 'Como apagar el Motorola Razr HD sin pantalla'
date: 2014-02-23T23:29:00.010+13:00
draft: false
tags : [tutorial, hacking, Android]
---

[![](http://www.androidspain.es/wp-content/uploads/2013/04/Boton-apagado-Android-225x400.png)](http://www.androidspain.es/wp-content/uploads/2013/04/Boton-apagado-Android-225x400.png)El RAZR HD viene con una batería no removible y cuando [no te funciona el digitalizador](https://blog.cristianmarquez.me/2014/02/leyendo-mensajes-de-whatsapp-mediante.html) es un embole.  
Aqui un pequeño tutorial para apagarlo usando dos herramientas: **uiautomatorviewer** e **input**  
Primero tenemos que asegurarnos que la pantalla esta prendida. Despues mantenemos presionado el boton de POWER para que salga el cartel de APAGAR y ejecutamos los siguientes comandos:  
  
**adb shell**  
**shell@xt925:/$su  
root@xt925:/\# input tap 192 384**  
**root@xt925:/\# input tap 361 700**  
  

Desconectamos el cable usb y listo, celular apagado. 

  

Pueden usar **uiautomatorviewer** para saber en donde andan ;)

[](http://2.bp.blogspot.com/-05uhsqMjEsQ/UwnMgFTiQzI/AAAAAAAAWwM/egv_8nP9QmI/s1600/2014-02-23+07_24_00-C__WINDOWS_system32_cmd.exe.png)[![](http://4.bp.blogspot.com/-9l1ub8N-TyI/UwnMiMgIK5I/AAAAAAAAWwU/i5H3Z_Hq2hg/s1600/2014-02-23+07_23_49-Blogger_+CristianMarquez.com.ar+-+Crear+entrada.png)](http://4.bp.blogspot.com/-9l1ub8N-TyI/UwnMiMgIK5I/AAAAAAAAWwU/i5H3Z_Hq2hg/s1600/2014-02-23+07_23_49-Blogger_+CristianMarquez.com.ar+-+Crear+entrada.png)