---
title: 'Using Safari Webdriver'
date: 2012-05-28T11:26:00.003+12:00
draft: true
slug: 'Using Safari Webdriver'
externalLink: ""
series: []
tags: [tutorial, selenium, automated testing, test, webdriver]
---

  
[![](http://4.bp.blogspot.com/-6nxVbuLw47I/T8LE1YocjQI/AAAAAAAAMWk/FsHcyXlygpY/s1600/big-logo.png)](http://4.bp.blogspot.com/-6nxVbuLw47I/T8LE1YocjQI/AAAAAAAAMWk/FsHcyXlygpY/s1600/big-logo.png)Hi all:  
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

  
  

[![](http://3.bp.blogspot.com/-Ov-LFf4Mv5w/T8K0o2GrNCI/AAAAAAAAMU0/KpRvRFq9p8A/s400/1a-+checkout.png)](http://3.bp.blogspot.com/-Ov-LFf4Mv5w/T8K0o2GrNCI/AAAAAAAAMU0/KpRvRFq9p8A/s1600/1a-+checkout.png)

[![](http://4.bp.blogspot.com/-GCR7kzSRha8/T8K0pFheCNI/AAAAAAAAMU8/QLKIBIVE-24/s400/1b-+checkout.png)](http://4.bp.blogspot.com/-GCR7kzSRha8/T8K0pFheCNI/AAAAAAAAMU8/QLKIBIVE-24/s1600/1b-+checkout.png)

[![](http://2.bp.blogspot.com/-jn1HW6ICQ9g/T8K1Hta9nYI/AAAAAAAAMVU/Cqj3HdYI9lA/s640/2a-+build+(1).png)](http://2.bp.blogspot.com/-jn1HW6ICQ9g/T8K1Hta9nYI/AAAAAAAAMVU/Cqj3HdYI9lA/s1600/2a-+build+(1).png)

[![](http://4.bp.blogspot.com/-zieX3fH6OuY/T8K0qOM6l6I/AAAAAAAAMVM/lhysme-ecFw/s640/2b-+build.png)](http://4.bp.blogspot.com/-zieX3fH6OuY/T8K0qOM6l6I/AAAAAAAAMVM/lhysme-ecFw/s1600/2b-+build.png)

  

  

  

**Installation:**  
  

1.  Register as an Apple Developer in [https://developer.apple.com/programs/register/](https://developer.apple.com/programs/register/)
2.  Join in the Safari development program [https://developer.apple.com/devcenter/safari/renew/index.action](https://developer.apple.com/devcenter/safari/renew/index.action)
3.  Generate a Safari certificate [https://developer.apple.com/certificates/index.action#safarilist](https://developer.apple.com/certificates/index.action#safarilist)
4.  Install the certificate
5.  Open Safari.
6.  In Safari, go to **Preferences** \-> **Advanced** \-> check the **Show Development** menu in menu bar.
7.  Go to **develop** \-> **show extension builder**.
8.  Click on **\+ (Add)** -> **Add extension**
9.  Select the **SafariDriver.safariExtension** folder, located in 
10.  Click on **install**

[![](http://2.bp.blogspot.com/-bSdc6qNatbw/T8K2NI8bg5I/AAAAAAAAMV8/q-9F3UnJxY4/s400/certificate.png)](http://2.bp.blogspot.com/-bSdc6qNatbw/T8K2NI8bg5I/AAAAAAAAMV8/q-9F3UnJxY4/s1600/certificate.png)

[![](http://4.bp.blogspot.com/-dAFDb3nfpsw/T8K2MoK4DbI/AAAAAAAAMV0/UUwCBBaaewY/s640/advanced.png)](http://4.bp.blogspot.com/-dAFDb3nfpsw/T8K2MoK4DbI/AAAAAAAAMV0/UUwCBBaaewY/s1600/advanced.png)

[![](http://3.bp.blogspot.com/-AXQppKO2Khc/T8K2NkCuPLI/AAAAAAAAMWE/jdk3uuEs73s/s640/extension.png)](http://3.bp.blogspot.com/-AXQppKO2Khc/T8K2NkCuPLI/AAAAAAAAMWE/jdk3uuEs73s/s1600/extension.png)

  

  

[![](http://2.bp.blogspot.com/-WhdNNrMixCU/T8K2OBGSbxI/AAAAAAAAMWM/PXplvb34NbM/s640/extensionbuilder.png)](http://2.bp.blogspot.com/-WhdNNrMixCU/T8K2OBGSbxI/AAAAAAAAMWM/PXplvb34NbM/s1600/extensionbuilder.png)

**Call:**

```
/\*\*  
   \* Sets safari driver  
   \*   
   \* @param context  
   \*          Current test context  
   \*/  
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

  

```
@Test  
    public void StartSafariWD() {  
        browser.start("safariWD");  
        browser.stop();  
        }
```