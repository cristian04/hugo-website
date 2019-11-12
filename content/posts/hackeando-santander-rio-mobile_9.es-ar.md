---
title: 'Hackeando Santander Rio Mobile'
date: 2013-11-09T08:43:00.002+13:00
draft: false
slug: 'Hackeando Santander Rio Mobile'
externalLink: ""
series: []
tags: [tarjeta, tutorial, logs, seguridad, santander rio, hacking, Android]
---

[![](http://i.imgur.com/6Mxmsl7.gif)](http://i.imgur.com/6Mxmsl7.gif)

  

Mientras estuve analizando algunas aplicaciones que bajé de Google Play, me encontré con algunas particularidades que me hicieron reír y, después, preocuparme. A continuación les muestro algunas de ellas.  

{{% notice warning %}}
Con el término "**hackeando**" me refiero al simple hecho de encontrar info en algo existente en mi teléfono, y no al uso de herramientas de **cracking**.
{{% /notice %}}

# Introducción

En la mayoría de los sistemas basado en linux tenemos un sistema de logging, en donde se guardan los registros de los procesos y otra info útil.  

Android, al estar basado en linux, también dispone de diferentes logs que podemos consultar.  

El uso de los logs tiene varios propósitos: muchas veces los developers lo usamos como herramienta de debugging para saber que esta haciendo una aplicación, en otros casos, es muy útil  para sysadmins o clientes mostrando los errores que están ocurriendo. La mayoría de las herramientas tienen diferentes niveles de detalle de logs. Entre estos niveles tenemos los siguientes:  

- **WARNING**: Cualquier cosa que potencialmente puede causar comportamientos extraños en la aplicación, pero que son tratados de manera que la recuperación es automática
- **DEBUG**: información de diagnostico que es útil para no solo los developers, sino también para sysadmins, IT, etc)
- **INFO**: Información genérica. (un servicio que se prende o apaga, valores por default en configuración, etc)
- **ERROR**: Cualquier problema fatal para la operación de la aplicación.

Android viene con una herramienta: **[logcat](http://developer.android.com/tools/help/logcat.html)**. Con ella podemos acceder a uno de los logs principales del sistema. También podemos usar alguna aplicación como [catlog](https://play.google.com/store/apps/details?id=com.nolanlawson.logcat&hl=es) (disponible en Google Play) para visualizar y poder filtrar la info

### [![](http://4.bp.blogspot.com/-KjuCXvKccGc/Un04I_gSRlI/AAAAAAAAWKE/AY-9RhK9Shc/s200/Screenshot_2013-11-08-15-46-39.png)](http://4.bp.blogspot.com/-KjuCXvKccGc/Un04I_gSRlI/AAAAAAAAWKE/AY-9RhK9Shc/s1600/Screenshot_2013-11-08-15-46-39.png)

## Vamos a hacer algunas pruebas

Despues de loguearme a una aplicación de HomeBanking y usar la aplicación de manera normal, decidí acceder al log. (La aplicacion era del Santander Rio en este caso, en los proximos dias voy a estar probando otras)  

Escondido entre basura, encontré lo siguiente:  

    Connnecting to: https://www.mobilebanking.santanderrio.com.ar/MBI/tunnel  

Request:  
    {{< highlight xml "linenos=table">}}
    <?xml version="1.0" encoding="UTF-8"?>
    <xml xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="request.xsd">
    <header>
        <acceso>
            <user>MBC_ANDROID</user>
            <pwd>P45A8FR9D</pwd>
        </acceso>
        <device>
            <token>A10ddd944c58c247d</token>
            <idPlataforma>5</idPlataforma>
            <deviceId>JLS36I</deviceId>
            <deviceModel>XT925</deviceModel>
        </device>
        <servicio>
            <idProducto>1</idProducto>
            <idSubProducto>2</idSubProducto>
            <version>1.5.0</version>
            <idServicio>20</idServicio>
        </servicio>
        <location>
            <mcc>0</mcc>
            <mnc>0</mnc>
            <lac>0</lac>
            <cellId>0</cellId>
            <latitud>0.0</latitud>
            <longitud>0.0</longitud>
        </location>
    </header>
    <body>
        <serverUrl>https://www.mobilebanking.santanderrio.com.ar/MBI/catalogo</serverUrl>
        <request><![CDATA[<?xml version="1.0" encoding="utf-8"?><soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:body><xml><header><service>checkVersion</service><version>1.00.00</version></header><body><idRuntime>5</idRuntime><idPrograma>1</idPrograma><version>1.5.0</version></body></xml></soap:body></soap:Envelope>]]></request>
    </body>
    </xml>
    {{< /highlight >}}

    ResponseCode: 200  
    Enviando a HTTP\_LOADER\_COMPLETE  

Vamos a analizar que tenemos aqui :idk:

1.  Primero y principal, ya tenemos una URL: https://www.mobilebanking.santanderrio.com.ar/MBI/tunnel
2.  Si acomodamos el Request, tenemos lo siguiente: 

    {{< highlight xml "linenos=table">}}
    <user>MBC_ANDROID</user>
    <pwd>P45A8FR9D</pwd>
    <token>A10ddd944c58c247d</token>
    <idPlataforma>5</idPlataforma>
    <deviceId>JLS36I</deviceId>
    <deviceModel>XT925</deviceModel>`
    {{< /highlight >}}

3.  Ademas de eso, en el log también aparece otra info mas sensible todavía!!! 

    {{< highlight log "linenos=table">}}
    11-08 16:19:20.687: D/Prod Ind Result(18073): Nodo: nroSuc Value: 02----  
    11-08 16:19:20.687: D/Prod Ind Result(18073): Nodo: indJerarquia Value: P  
    11-08 16:19:20.687: D/Prod Ind Result(18073): Nodo: clasePaquete Value: 14  
    11-08 16:19:20.687: D/Prod Ind Result(18073): Nodo: tipo Value: 02  
    11-08 16:19:20.687: D/Prod Ind Result(18073): Nodo: estado_tarjeta_credito Value: A  
    11-08 16:19:20.687: D/Prod Ind Result(18073): Nodo: clase Value: N  
    11-08 16:19:20.687: D/Prod Ind Result(18073): Nodo: codigoTitularidad Value: TI  
    11-08 16:19:20.687: D/Prod Ind Result(18073): Nodo: clave_bancaria_unificada Value: 0BLOQUEADO_POR_SEGURIDAD  
    11-08 16:19:20.687: D/Prod Ind Result(18073): Nodo: numero Value: 00000BLOQUEADO_POR_SEGURIDAD  
    11-08 16:19:20.687: D/Prod Ind Result(18073): Nodo: nro_Tarjeta_credito Value: 0000BLOQUEADO_POR_SEGURIDAD
    {{< /highlight >}}

**No les parece mucha info en el log para ser el sistema de un Banco?** No solo puedo ver el nro de las tarjetas de credito que tengo, sino tambien un usuario y password de ellos!!!  

### **Algunos tips**:

El problema de porque esta info esta visible en la aplicación es porque algunos developers no leen la documentación de android ([http://developer.android.com/tools/publishing/preparing.html](http://developer.android.com/tools/publishing/preparing.html))  

Ahi mismo dice:  

{{% notice note %}}
Make sure you deactivate logging and disable the debugging option before you build your application for release. You can deactivate logging by removing calls to LOG methods in your source files. You can disable debugging by removing the`android:debuggable` attribute from the `<application>` tag in your manifest file, or by setting the`android:debuggable` attribute to `false` in your manifest file. Also, remove any log files or static test files that were created in your project.

Also, you should remove all `Debug` tracing calls that you added to your code, such as `startMethodTracing()` and`stopMethodTracing()` method calls.

{{% /notice %}}
---
### Comments:
#### Deberias informar a santander rio de esto
[Anonymous]( "noreply@blogger.com") - <time datetime="2013-11-10T07:45:28.308+13:00">Nov 6, 2013</time>

Deberias informar a santander rio de esto
<hr />
#### Ya fue informado via twitter y google play. Me dij...
[Cristian Alberto Marquez Russo](https://www.blogger.com/profile/02333717952816180937 "noreply@blogger.com") - <time datetime="2013-11-10T07:46:51.371+13:00">Nov 6, 2013</time>

Ya fue informado via twitter y google play. Me dijeron que ya fue reportado el issue.
<hr />
#### Todavía sigue igual..! :S
[Martin Aberastegue](http://www.rzw.com.ar/ "noreply@blogger.com") - <time datetime="2014-01-15T14:19:12.802+13:00">Jan 2, 2014</time>

Todavía sigue igual..! :S
<hr />
