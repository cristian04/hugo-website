---
title: 'Android QA Automation Architecture'
date: 2013-09-19T10:48:00.003+12:00
draft: true
slug: 'Android QA Automation Architecture'
externalLink: ""
series: []
tags: [tutorial, android-maven-plugin, desarrollo, integracion continua, Android, maven]
---

Después de haber participado de varios proyectos con JAVA y otros tantos en ANDROID, logre armar una arquitectura estable de desarrollo  usando integración continua. (tanto para apps, librerias y tests automáticos)  
Lo que propongo con esta arquitectura es lo siguiente:  
  

*   Correr los tests en diferentes versiones de android, tanto en emuladores como en dispositivos reales.
*   Para proyectos del tipo librería, guardar el jar con la info de sus dependencias. Para proyectos de aplicaciones o tests, guardar el apk, también con la info de sus dependencias. Tanto los jars como los apks son guardados en Artifactory, un repositorio de dependencias.
*   Permitir la resolución de dependencias propias y de terceros.
*   Mejora en el manejo de dependencias para evitar conflictos
*   Uso de arquetipos existentes para cumplir con estándares.

  
La arquitectura es masomenos así:  
  
  
  

[![](http://2.bp.blogspot.com/-7tMWcwVcMsw/UjoVjn3pSZI/AAAAAAAAV8M/I6d3f7tEFwk/s400/Android+-+Artifactory+(1).png)](http://2.bp.blogspot.com/-7tMWcwVcMsw/UjoVjn3pSZI/AAAAAAAAV8M/I6d3f7tEFwk/s1600/Android+-+Artifactory+(1).png)

Click para ver mas grande

Para poder llevar a cabo estas features, implementé [**android-maven-plugin**.](https://code.google.com/p/maven-android-plugin) Este plugin, nos brinda varias tareas definidas para trabajar. Entre ellas destaco las siguientes:

**android:apk**

  Creates the apk file. By default signs it with debug keystore.

  Change that by setting configuration parameter

  <sign><debug>false</debug></sign>.

  

**android:apklib**

  Creates the apklib file.

  apklib files do not generate deployable artifacts.

  

**android:deploy**

  Deploys the built apk file, or another specified apk, to a connected device.

  Automatically performed when running mvn integration-test (or mvn install) on

  a project with instrumentation tests.

  

**android:devices**

  DevicesMojo lists all attached devices and emulators found with the android

  debug bridge. It uses the same naming convention for the emulator as used in

  other places in the Android Maven Plugin and adds the status of the device in

  the list. TODO The goal is very simple and could be enhanced for better

  display, a verbose option to display and to take the android.device paramter

  into account.

  

**android:emma**

  After compiled Java classes use emma tool

  

**android:emulator-start**

  EmulatorStartMojo can start the Android Emulator with a specified Android

  Virtual Device (avd).

  

**android:emulator-stop**

  EmulatorStartMojo can stop the Android Emulator with a specified Android

  Virtual Device (avd).

  

**android:emulator-stop-all**

  EmulatorStopeAllMojo will stop all attached devices.

  

**android:generate-sources**

  Generates R.java based on resources specified by the resources configuration

  parameter. Generates java files based on aidl files.

  

**android:lint**

  LintMojo can run the lint command against the project. Implements parsing

  parameters from pom or command line arguments and sets useful defaults as

  well. Warning, if you use android.lint.enableClasspath and/or

  android.lint.enableLibraries the behavior of this goal will vary depending on

  the phase where this goal is executed. See

  android.lint.classpath/lintClassPath and android.lint.libraries/lintLibraries

  for more details.

  

**android:pull**

  Copy file or directory from all the attached (or specified) devices/emulators.

  

**android:push**

  Copy file to all the attached (or specified) devices/emulators.