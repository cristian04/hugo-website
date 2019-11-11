---
title: 'QA Automation para Android'
date: 2011-10-17T20:29:00.006+13:00
draft: true
slug: 'QA Automation para Android'
externalLink: ""
series: []
tags: [tutorial, automated testing, qa automation, qa, Android]
---

[![](http://1.bp.blogspot.com/-3-TPRd7SScA/TpvWkB6zSYI/AAAAAAAAJsk/jMcs_w7-KUs/s200/screenshot13.png)](http://1.bp.blogspot.com/-3-TPRd7SScA/TpvWkB6zSYI/AAAAAAAAJsk/jMcs_w7-KUs/s1600/screenshot13.png)Buenas noches a todos =)  
Aqui les traigo algo que estuve utilizando luego de jugar con el SDK de Android y mi celular (Defy MB525 con Cyanogenmod 7.1.0)  
En sintesis, les voy a explicar como hacer para instalar WebDriver en el celular (o en un emulador) Android y poder correr pruebas automatizadas de paginas webs.  
**Requerimientos:**  
  

*   Eclipse funcionando (si tiene maven mejor :D )
*   Si no tienen un celular con android, necesitan el Android SDK. Es medio pesado para bajarlo con todas las tools y plataforms, aproximadamente 1.9Gb.
*   Si tienen un celu con android, recuerden habiltar la depuracion USB 

Aqui los pasos:

  

1.  Instalacion, configuracion y ejecucion de WebDriver en Android.

*   Bajamos[android-server-2.6.0.apk](http://selenium.googlecode.com/files/android-server-2.6.0.apk) desde la pagina de [Selenium](http://code.google.com/p/selenium/) y lo instalamos en el celular. Para hacer las cosas un poco mas avanzadas, lo vamos a instalar utilizando un comando de Android Debug Bridge (adb). Este procedimiento aplica tanto para el emulador como para un dispositivo android con depuracion usb activa:

1.    
    ```
    ./adb install android\-server.apk
    ```
    

*   Para ejecutar el programa, podemos ir al menu de aplicaciones y luego entrar en WebDriver. Un cartel nos avisara que jetty esta ejecutandose en background. Tambien tenemos una opcion mediante adb, pidiendole que levante el Activity Principal:

1.    
    ```
    $./adb shell am start \-a android.intent.action.MAIN \-n org.openqa.selenium.android.app/.MainActivity
    ```
    
    *   Por defecto, esta aplicacion escucha conexiones en el puerto 8080. Ahora necesitamos hacer un port-fw  entre el dispositivo android y nuestro sistema:
    
      
    ```
    $./adb forward tcp:4444 tcp:8080
    ```
    
    En mi caso, configuro que las escuchas las realice en el puerto 4444 ya que estoy acostumbrado a la manera en la que trabaja selenium server.
    

*   Probamos si todo funciona correctamente ingresando a [http://localhost:4444](http://localhost:4444/). Tienen que ver una pagina como la siguiente (no se preocupen por el 404 :D)[![](http://3.bp.blogspot.com/-Wq9VR-1Y8Rs/TpvLBKf2N8I/AAAAAAAAJsc/RCCv3SOTxOM/s400/screenshot12.png)](http://3.bp.blogspot.com/-Wq9VR-1Y8Rs/TpvLBKf2N8I/AAAAAAAAJsc/RCCv3SOTxOM/s1600/screenshot12.png)

8.  Creacion y ejecucion de un proyecto de tests.

*   Creamos un proyecto nuevo en eclipse y una Clase llamada FirstTest:
*   Agregamos las librerias de selenium y sus dependencias al proyecto ( bajar [selenium-java-2.8.0.zip](http://selenium.googlecode.com/files/selenium-java-2.8.0.zip)) Aquellos que usen maven pueden resolver las dependencias automaticamente. 

  
```
import junit.framework.TestCase;  
import org.openqa.selenium.By;  
import org.openqa.selenium.WebDriver;  
import org.openqa.selenium.WebElement;  
import org.openqa.selenium.android.AndroidDriver;  
   
public class FirstTest extends TestCase {  
   
 public void testGoogle() throws [Exception](http://java.sun.com/j2se/%3Cspan%20style=) {  
  WebDriver driver = new AndroidDriver("http://localhost:4444/wd/hub");  
   //driver.get("https://blog.cristianmarquez.me");  
   driver.get("http://www.google.com.ar");  
   assertEquals("Google",  driver.getTitle());  
  driver.quit();  
 }  
}
```

Luego ejecutan el proyecto como JUnit Test y en su dispositivo tienen que ver como corren las pruebas  
  
Espero que este tutorial les haya servido, lo voy a ir fixeando y complementando en la semana.  
Saludos y que tengan buen dia!  
  
Screenshots:  
  

[![](http://2.bp.blogspot.com/-0l8OWsdmrjg/TpvYK3E9TOI/AAAAAAAAJss/t9LJrF7OsVY/s400/screenshot14.png)](http://2.bp.blogspot.com/-0l8OWsdmrjg/TpvYK3E9TOI/AAAAAAAAJss/t9LJrF7OsVY/s1600/screenshot14.png)

  

[![](http://1.bp.blogspot.com/-_9yzQ98GCu8/TpvYLS9OlbI/AAAAAAAAJs0/HO3r8f8tYA8/s400/screenshot-1318836147591.png)](http://1.bp.blogspot.com/-_9yzQ98GCu8/TpvYLS9OlbI/AAAAAAAAJs0/HO3r8f8tYA8/s1600/screenshot-1318836147591.png)

Corriendo desde el Defy

[![](http://4.bp.blogspot.com/-EGR7ZXEY83M/TpvZLGsFVJI/AAAAAAAAJs8/cxqQhEQVOMY/s320/screenshot15.png)](http://4.bp.blogspot.com/-EGR7ZXEY83M/TpvZLGsFVJI/AAAAAAAAJs8/cxqQhEQVOMY/s1600/screenshot15.png)

Corriendo desde el emulador
---
### Comments:
#### ....en el fondo este es tu homenaje a Steve Jobs??...
[Anonymous]( "noreply@blogger.com") - <time datetime="2011-10-18T17:44:58.327+13:00">Oct 2, 2011</time>

....en el fondo este es tu homenaje a Steve Jobs??
<hr />
#### Gente que no tiene ni idea...  
http://lmgtfy.com...
[Anonymous]( "noreply@blogger.com") - <time datetime="2012-04-09T08:31:55.624+12:00">Apr 0, 2012</time>

Gente que no tiene ni idea...  
http://lmgtfy.com/?q=Steve+Jobs+android
<hr />
