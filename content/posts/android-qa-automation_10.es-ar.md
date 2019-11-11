---
title: 'Android QA Automation'
date: 2013-07-10T18:09:00.007+12:00
draft: false
slug: 'Android QA Automation'
externalLink: ""
series: []
tags: [tutorial, testing, bdd, automated testing, qa automation, desarrollo, qa, testing automatizado de android en argentina, Robotium, Android]
---

[![](http://3.bp.blogspot.com/-Yw_VZ0zQeqU/Udz6ITmYJWI/AAAAAAAAUxk/zV5jIN2ZOO8/s200/descarga.jpg)](http://3.bp.blogspot.com/-Yw_VZ0zQeqU/Udz6ITmYJWI/AAAAAAAAUxk/zV5jIN2ZOO8/s1600/descarga.jpg)Hace mas o menos 3 años arranque con desarrollo de aplicaciones en Android. Hoy quiero aprovechar mi experiencia e introducirlos en otra rama, el testing.  
Primeramente, necesitamos definir que tipo de test vamos a realizar, y que tipo de proyecto tenemos.  
Básicamente, puedo agrupar dos tipos de proyectos Android:  
  

1.  **Lib**: Se tratan de proyectos que, generalmente, no tienen interfaz gráfica y que son necesarios para otros proyectos. Por ejemplo: la librería de compatibilidad o librerias como AndEngine son proyectos librerias. Las librerias no se pueden instalar sino que deben ser usadas por proyectos del tipo aplicación. Para testear este tipo de proyectos se puede recurrir a hacer test unitario y, también a crear una aplicación "DEMO" que demuestre como funciona la librería. La automatización se hace sobre la aplicacion "DEMO" como si se tratase de un proyecto del tipo APP, pero verificando y validando la implementacion de la libreria.
2.  **App**: Estan compuestas por varios activities y generalmente usan librerias externas. Ademas de ejecutar unit test, se puede automatizar la UI mediante ADT o Robotium. Aqui vamos a tratar sobre este último

Robotium:
---------

Como bien dice el sitio oficial del proyecto, Robotium es un framework de automatización de pruebas para aplicaciones nativas e híbridas. ( Uno de los problemas con los que me encontré a lo largo de mi experiencia en QA Android fue automatizar algunas webviews de aplicaciones híbridas con el framework oficial. En estos casos, Robotium pudo resolver mis problemas.)

> Tip: Para desbloquear el emulador usando adb, se puede hacer mediante: **adb shell input keyevent 82**

  

Robotium hace en Android lo que Selenium hace en los Browsers (aunque el mapeo de elementos es mucho menos complicado que en selenium). Hasta tenemos un Robotium RC!!

Si bien seguimos usando el mismo framework para trabajar (ADT) estamos utilizamos otro instrumentador con el cual correr los tests (definido en el manifest)

La estructura de la clase de un test es la siguiente, conservando la nomenclatura de Junit3.

  

```
public  class  EditorTest  extends ActivityInstrumentationTestCase2<EditorActivity\>  { private  Solo solo; public  EditorTest()  { super(EditorActivity.class); } public  void setUp()  throws  Exception  {solo \=  new  Solo(getInstrumentation(), getActivity()); } public  void testPreferenceIsSaved()  throws  Exception  {  
    
                solo.sendKey(Solo.MENU);  
                solo.clickOnText("More");  
                solo.clickOnText("Preferences");  
                solo.clickOnText("Edit File Extensions"); Assert.assertTrue(solo.searchText("rtf"));  
                  
                solo.clickOnText("txt");  
                solo.clearEditText(2);  
                solo.enterText(2,  "robotium");  
                solo.clickOnButton("Save");  
                solo.goBack();  
                solo.clickOnText("Edit File Extensions"); Assert.assertTrue(solo.searchText("application/robotium")); }  
  
   @Override  
   public  void tearDown()  throws  Exception  {  
        solo.finishOpenedActivities(); }  
}
```

  

Si quieren tener un poco mas de informacion, pueden visitar el sitio oficial [https://code.google.com/p/robotium/wiki/Getting\_Started](https://code.google.com/p/robotium/wiki/Getting_Started) o bajar el PDF con las instruciones aqui: -> [https://robotium.googlecode.com/files/AndroidCalculatorTest.pdf](https://robotium.googlecode.com/files/AndroidCalculatorTest.pdf)