---
title: 'A new website'
date: 2015-08-12T19:45:00.004+12:00
draft: false
slug: 'A new website'
externalLink: ""
series: []
tags: [english, devops, projects, git to ftp, web]
---

Today I released a new personal site: [http://www.cristianmarquez.me](http://www.cristianmarquez.me/)  
For build this site, I used the following tools:  
  

1.  Template: I'm using the ALPHA html5 template available on [html5up.net](http://html5up.net/). They are responsive!
2.  GitHub: For source code management. The repo is [here](https://github.com/cristian04/cristianmarquez.me) 
3.  [Ftploy](https://www.ftploy.com/): As a Continuous Delivery tool, publishing my master branch via ftp.

Additional tools:

1.  [Web Page Test.org](http://webpagetest.org/) to know if my site is working correctly
2.  [Font Awesome](http://fortawesome.github.io/Font-Awesome/) for the icons on the page

This is the result:

Preview:

![](http://4.bp.blogspot.com/-22lqrpLd-kc/Vcr5Uj2llGI/AAAAAAAAgqU/p8ef7WNnw9Y/s1600/xino.jpeg)

  

  

WebPageTest report:

![](http://3.bp.blogspot.com/-s4sZSBl7yls/Vcr4__m6LCI/AAAAAAAAgqM/FqMsa-0D64Y/s400/Screen%2BShot%2B2015-08-12%2Bat%2B7.39.28%2Bpm.png)

  

For the **Compress transfer** and **Cache Static Content**, Apache uses the .**htaccess** file.

For the image compression, I used [CompressJPG](http://compressjpeg.com/) 

As this is a personal page, I don't care about CDN. However, it is possible to use AWS CloudFrount or others CDN providers.  
This is the output of FTPloy:  

[![](http://2.bp.blogspot.com/-8abdYw8MfqM/VcsW9cWGhnI/AAAAAAAAgqo/2FaLj_fLSsM/s400/Screen%2BShot%2B2015-08-12%2Bat%2B9.49.56%2Bpm.png)](http://2.bp.blogspot.com/-8abdYw8MfqM/VcsW9cWGhnI/AAAAAAAAgqo/2FaLj_fLSsM/s1600/Screen%2BShot%2B2015-08-12%2Bat%2B9.49.56%2Bpm.png)