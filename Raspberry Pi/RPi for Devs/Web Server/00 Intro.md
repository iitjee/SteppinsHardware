We'll talk about running a web server from Raspberry Pi. So, what this module is all about is HTTP, HTTP protocol, and how you can expose a service using the HTTP protocol from a Raspberry Pi. 
<br/>
For example, in my hardware module I did a demo where I hooked up a distance sensor to an Arduino to the Raspberry Pi and it played an alert, but if I'm not home, maybe I want to go back and be able to see, you know, what are all the times that an alert happened. So, from my Python program that I was using to get the alerts, I could write data to a file or even to a database, and then I could have set up a web server that would allow me to get that data off easily later through a web browser, which is really the easiest way to expose data off of the Raspberry Pi. 
<br/>
I can exchange files with the Raspberry Pi by using Bluetooth file exchange if I have a Bluetooth dongle,
<br/>
 I could set up an FTP server and FTP files back and forth, I could set up a Samba share and/or other kinds of of shares depending on what version of a client operating system I'm using. Samba would be for Windows.
<br/>

 <b> Serving Up Static Files </b> <br/>
 You can Apache on the Raspberry Pi if you'd like. Nginx, however, is sort of a new hotness in the web server world. It is a very lightweight fast web server that you can set up easily on a Raspberry Pi just by doing an apt-get because nginx has already been complied for the ARM processor. Now, one of the cool things you can do with nginx is you can serve up both static and dynamic content. Although nginx doesn't itself allow you to program in Python or PHP or JavaScript or any other dynamic language for building websites and web services, it does allow you to essentially proxy to those services. This is a way that a lot of websites today are set up is that they're using nginx to serve up static files, and then they're creating a little bit of configuration so that certain requests go to another service either running on the same machine or on another machine in the same data center, and then setting up this proxy or upstream node to the other service. So, this example is setting up an upstream configuration inside of nginx to port 8080 and let's do that! :D
 <br/>
 <br/>
 https://www.raspberrypi.org/documentation/remote-access/web-server/nginx.md
 <br/>
 
 
 
