---
title: 'Using Safari Webdriver'
date: 2012-05-28T11:26:00.003+12:00
draft: false
images: ["/images/big-logo.png"]
tags : [tutorial, selenium, automated testing, test, webdriver]
slug: 'Using Safari WebDriver - Selenium'
series: ['automated testing','selenium','qa']
---

  
[![](/images/big-logo.png)](/images/big-logo.png)

Hi all:  
Recently the selenium team has released the safaridriver extension than allows the communication between WebDriver and the browser.  
However, this extension is only available for Safari 5+ and you need  tune up you browser before you can install it. In addition, you need to compile the extension from the sources.  
Here are all the steps with a few screenshots to help you in all the process.  
I hope these steps be useful  
Cheers,  
  
  
  
**Requisites**  
  

*   You need Safari 5 +. You can get it from: [http://www.apple.com/es/safari/download/](http://www.apple.com/es/safari/download/)

  
**Installation steps**  
**Safari Extension:**  
**Compiling**  
_If you dont want to compile the extension, or if you have problems when compiling, you can use download a precompiled extension from [here](http://code.google.com/p/selenium/issues/detail?id=3827#c11) (look for the _**SafariDriver.safariextension.zip** _file_)  
  
  

1.  Checkout the 16670 version of the selenium project. Download all the project, not just the safariDriver folder. ~150Mb
2.  Build the extension. You need java properly set in your system's settings.

  
  

[![](/images/1a-+checkout.png)]()

[![](/images/1b-+checkout.png)]()

[![](/images/2a-+build+(1).png)]()

[![](/images/2b-+build.png)]()


**Installation:**  
  

1.  Register as an Apple Developer in [https://developer.apple.com/programs/register/](https://developer.apple.com/programs/register/)
2.  Join in the Safari development program [https://developer.apple.com/devcenter/safari/renew/index.action](https://developer.apple.com/devcenter/safari/renew/index.action)
3.  Generate a Safari certificate [https://developer.apple.com/certificates/index.action#safarilist](https://developer.apple.com/certificates/index.action#safarilist)
4.  Install the certificate
5.  Open Safari.
6.  In Safari, go to **Preferences** -\> **Advanced** -\> check the **Show Development** menu in menu bar.
7.  Go to **develop** -\> **show extension builder**.
8.  Click on **\+ (Add)** -\> **Add extension**
9.  Select the **SafariDriver.safariExtension** folder, located in 
10.  Click on **install**

[![](/images/certificate.png)]()

[![](/images/advanced.png)]()

[![](/images/extension.png)]()

  

  

[![](/images/extensionbuilder.png)]()

**Call:**

```java
/**  
   \* Sets safari driver  
   \*   
   \* @param context  
   \*          Current test context  
   */  
  private void setSafariDriver()  
    {  
      getLogger().log(Level.INFO, "Starting safari");  
      if (isSupportedPlatform())  
        {  
          driver = new SafariDriver();  
          getLogger().log(Level.INFO, "Safari started correctly");  
        }  
      else  
        {  
          getLogger().log(Level.INFO, "Platform not valid.");  
        }  
    }  
    
  private static boolean isSupportedPlatform()  
    {  
      Platform current = Platform.getCurrent();  
      return Platform.MAC.is(current) || Platform.WINDOWS.is(current);  
}  
```
**Testing:**

You can try with a JUnit class

In example:

  
```java
@Test  
    public void StartSafariWD() {  
        browser.start("safariWD");  
        browser.stop();  
        }
```