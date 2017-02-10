<b>Intro</b> <br/>
In this module, we'll get connected to the Raspberry Pi home server over the network.
We'll look at two different methods of assigning the Pi a static network address so that you can find it easily, then we'll look at three different ways of connecting to the Pi remotely, through SSH, over the web, and finally through a remote desktop session. After this module, there will be no need to keep the Pi connected to your monitor, keyboard or mouse, this will allow you to place the server up on a shelf safely out of the way. I keep mine next to the network router in my basement.


<br/>
<b>Network Addresses</b> <br/>
Every device on a computer network has an Internet Protocol, or IP address. This allows the network to direct the traffic from one computer to another, ensuring that messages reach their intended destinations. Most home network routers are set up to automatically assign addresses on a first come, first serve basis, so on any given day a device may not receive the same address as it did the day before. Most home networks use addresses in the 192.168 range. Depending on your brand of router, the third number of the address might be a 0 or it might be a 1, it doesn't really make a difference though, either one works just fine. We don't normally think about any of this, because we generally reference devices by their names, and this is fine for most purposes, but presents two problems for the Raspberry Pi home server. First, the Pi won't answer by name, at least not yet, and second, we're eventually going to want to open up certain firewall ports to allow remote access, and network routers want to know addresses, not names.

<br/>
<b>Static IP Addresses</b><br/>

Your typical home network router uses what's called the Dynamic Host Configuration Protocol, or DHCP, to assign IP addresses to the other devices on the network. When a new computer joins the network, it asks the router for an IP address, and the router assigns it one out of a pool of addresses set aside for this. For instance, here's a shot from my own router's administration page, showing the range of addresses reserved for dynamic assignment. Your own router will probably look very different, but the idea is the same. In my case, the DHCP pool spans all of the addresses from 100 to 199.
<br/>

<b>Static IP Method 1</b><br/>
There are two ways to assign a permanent or static IP address to the Raspberry Pi home server. The first is to simply assign an address to the Pi by hand. This is pretty easy, but it's up to you to keep track of which addresses are assigned to which devices so that they don't interfere with each other. In my case, the router is using 1 for itself, and everything between 100 and 199 for DHCP. This leaves everything from 2 to 99 and 200 to 255 for me to do whatever I want with. As long as I don't assign the same address to more than one device, I should be fine. With a few configuration changes, I can tell the Raspberry Pi not to ask for an IP address from the router, but to just the use the one I say to use. Let's look at that now.
<br/>
Demo (open rpi terminal): <br/>
```$ifconfig``` (Look for the eth0 section and write down the mask value. )
</br>
 For nearly all home networks this will be 255.255.255.0. The second piece of information you'll need is the default gateway. This is the IP address of your router. If you don't know this off the top of your head, just run
 ```route -n,```
 and look for the line with a UG on it. Write down the gateway value. Using the nano editor, edit the network configuration file, which is located at ```etc/network/interfaces```. Look for the line that starts with iface eth0. This is the first, and in the case of the Raspberry Pi, the only Ethernet port. At the end of the line, you'll see the letters dhcp. This line is telling the Raspberry Pi to ask the router for an IP address over the Ethernet port. Change dhcp to static. Then we'll need to add a few lines for settings that the router would have provided over dhcp. The first is the address. In my case I've decided to go with 192.168.1.2. Next is the netmask, this is the 255.255.255.0 that we wrote down earlier. And finally, the gateway setting. So this is the router's IP address, in my case 192.168.1.1. Exit nano, saving the file, and reboot the Raspberry Pi with ```sudo reboot```. Once everything is booted back up you can type ```ifconfig``` again to see the changes.






