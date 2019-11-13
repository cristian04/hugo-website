---
title: 'Using Safari Webdriver'
date: 2012-05-28T11:26:00.003+12:00
draft: false
slug: 'Using Safari Webdriver'
externalLink: ""
series: []
tags: [tutorial, selenium, automated testing, test, webdriver]
categories: [automated testing, tech, hacks]
---

Recently the selenium team has released the `safaridriver extension` than allows the communication between WebDriver and the browser.

However, this extension is only available for Safari 5+ and you need tune up you browser before you can install it. In addition, you will need to compile and build the extension.

Here are all the steps with a few screenshots to help you along the process.

I hope this is useful

Cheers,  
  
## Requisites  
  - You need `Safari 5+`.

## Installation steps
### Safari Extension
### Compiling

{{% notice tip %}}
_If you dont want to compile the extension, or if you have problems compiling it, you can download a precompiled extension from [here](http://code.google.com/p/selenium/issues/detail?id=3827#c11) (look for the _**SafariDriver.safariextension.zip** _file_)
{{% /notice %}} 
  
1.  Checkout the 16670 version of the selenium project. Download the entire project. ~150Mb
2.  Build the extension. You need java properly set in your system's settings.

<p align="center">
  <img src="http://2.bp.blogspot.com/-jn1HW6ICQ9g/T8K1Hta9nYI/AAAAAAAAMVU/Cqj3HdYI9lA/s1600/2a-+build+(1).png" width="70%"/>
</p>

<p align="center">
  <img src="http://4.bp.blogspot.com/-zieX3fH6OuY/T8K0qOM6l6I/AAAAAAAAMVM/lhysme-ecFw/s1600/2b-+build.png" width="70%"/>
</p>

## Installation

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

<p align="center">
  <img src="http://2.bp.blogspot.com/-bSdc6qNatbw/T8K2NI8bg5I/AAAAAAAAMV8/q-9F3UnJxY4/s1600/certificate.png" width="50%"/>
</p>

<p align="center">
  <img src="http://4.bp.blogspot.com/-dAFDb3nfpsw/T8K2MoK4DbI/AAAAAAAAMV0/UUwCBBaaewY/s1600/advanced.png" width="50%"/>
</p>

<p align="center">
  <img src="http://3.bp.blogspot.com/-AXQppKO2Khc/T8K2NkCuPLI/AAAAAAAAMWE/jdk3uuEs73s/s1600/extension.png" width="50%"/>
</p>

<p align="center">
  <img src="http://2.bp.blogspot.com/-WhdNNrMixCU/T8K2OBGSbxI/AAAAAAAAMWM/PXplvb34NbM/s1600/extensionbuilder.png" width="50%"/>
</p>

## Usage

{{< highlight java "linenos=table">}}
   \**  
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
{{< /highlight >}}

**Testing:**

You can try with a JUnit class

{{< highlight java "linenos=table">}}
@Test  
    public void StartSafariWD() {  
        browser.start("safariWD");  
        browser.stop();  
        }
{{< /highlight >}}