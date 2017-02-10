In this course we're going to turn a Raspberry Pi computer into a complete home server capable of sharing files and media with other devices in your house, backing up those other devices, and even providing secure access to your home network when you're away.

<br/>
 When it's completed, it'll act as a file server, letting you centralize files, pictures, music, and videos all in one place, a media server to serve those items up to media devices around your house using the DLNA standard, a crash plan backup server providing automated backups of your other computers, a virtual private networking server, which will provide secure access to your home network when you're away, your own private cloud, synchronizing files across multiple different devices, and even a blog engine that you can use to host a small private site or a small public blog.
 
 <br/>
 There are a lot of things in this course that you could just go out and buy in the form of a network-attached storage device or a VPN-capable router, so why would you want to build your own? Well as they say, because it's there. You can spend a lot of money on a bunch of dedicated, single-purpose devices, or you can spend very little money, recycle some of your old leftover gear, and spend a day building something from scratch instead. 
 
 <br/>
 The tasks this server will be performing are not that processor intensive, and while there will be a few steps such as indexing and media collection that might take up some time, once those tasks are completed, the Raspberry Pi can keep up just fine in most cases.
 
 <br/>
 Running Cost
 Assuming you want to build this server, what can you except the running cost to be? Raspberry Pi Model B draws 700 mA, but let's assume the worst case and that we're maxing out a 1 A power supply. Five volts at 1 A equals 5 W, 1000 W hours divided by those 5 W means that it'll take 200 hours to consume 1 kWh hour at a cost of about .8 per kWh right now. There are 8784 hours in a leap-year, again, our worst case scenario, divide that by 200 hours from above, and we find that the Pi will consume a little less than 44 kWh per year. Multiply that by the .8 from above, and we find that the Pi will use about $3.50 worth of electricity per year, that's just under a penny a day. Of course once you add external drives to the mix, the whole system will use more power, but I can't tell you what your particular drives are going to draw, so these figures are for the Raspberry Pi alone.

<br/>
 You'll need a power supply, which is any micro USB supply such as a cell phone charger. As long as it can output 700 mA or more, you should be okay, but the quality of your power supply can have a dramatic effect on the stability of your server, so don't skimp on this part if you can help it. 
 
 <br/>
 You'll need a home network with access to the internet, and a network cable for the Pi. You can use a Wi-Fi adapter in order to make your server wireless, but you'll need to make sure you buy an adapter that's supported by the Raspbian OS we'll be using
 
 <br/>
 . You can see a list of hardware that's known to work with the Raspberry Pi at elinux.org/RPi_VerifiedPeripherals, and as unusual as this may sound, yes, that address really is case sensitive. And finally, you'll need an external drive to hold all of your stuff. This could be a particularly large flash drive or an external hard drive, depending on how much stuff you want your server to share. If you're using an external hard drive, it'll most likely need its own power supply or a powered USB hub, since the Raspberry Pi doesn't put out enough power on its own to run most hard drives. There are tweaks you can do to increase the USB power output from the Raspberry Pi, but remember that the whole thing is running off of what is essentially a cell phone charger, so whether or not it works will depend on how strong your power supply is and how much power your drive needs. Make sure the drive is empty, or that you've backed up its contents first, because we'll be formatting it as part of the build.
 
 <br/>
 



