In this module, we'll add an external hard drive to make room for the Raspberry Pi home server to store files. We'll look a little deeper into the Linux file system, partition, format, and finally mount the hard drive.


<br/>

<b>Mass Storage</b> <br/>
The SD card is fine for storing the operating system and configuration files, but what a proper server needs is massive amounts of storage. The SDXC spec allows for up to 2 TB SD cards, but those cards aren't commercially available just yet. For now, we'll make do with an external hard drive
 <br/>
 Remember that the Raspberry Pi is running off of what is basically a phone charger, so it may not provide enough power to run a hard drive by itself. If you're not getting quite enough power out of the Pi, there is a tweak to increase the USB power output, but even that can only do so much if your power supply isn't strong enough. In that case, you'll either need a drive with its own power supply, or you'll need to plug it into a powered USB hub. A USB hub will also help to conserve the Pi's limited supply of USB ports. Either one of these options may introduce a new problem known as back powering, however, Ordinarily, you'd power the Pi from its own power source, and it would then supply power to the external hard drive. A well-designed USB device is supposed to only receive power through its USB cable, even if they have their own power supplies, but some cheaper drives simply connect the power lines from their own power supply and USB cable together. In cases like these, the power ends up flowing both directions on the USB cable, and when the power is removed from the Raspberry Pi, this back power can keep the Pi running. Older models could be powered entirely this way, which was convenient, but definitely not what the designers had in mind. Newer models could not be started up this way, but they can be kept awake by the drives back power once they're running. Future models may do away with this entirely, so you'll need to test your own gear to see how it behaves. Plugging both the Raspberry Pi's power supply, as well as the drives into a power strip together will solve this problem with one switch controlling both device's sources of power.
 
 <br/>
 
 
