In this module, we'll add an external hard drive to make room for the Raspberry Pi home server to store files. We'll look a little deeper into the Linux file system, partition, format, and finally mount the hard drive.


<br/>

<b>Mass Storage</b> <br/>
The SD card is fine for storing the operating system and configuration files, but what a proper server needs is massive amounts of storage. The SDXC spec allows for up to 2 TB SD cards, but those cards aren't commercially available just yet. For now, we'll make do with an external hard drive
 <br/>
 Remember that the Raspberry Pi is running off of what is basically a phone charger, so it may not provide enough power to run a hard drive by itself. If you're not getting quite enough power out of the Pi, there is a tweak to increase the USB power output, but even that can only do so much if your power supply isn't strong enough. In that case, you'll either need a drive with its own power supply, or you'll need to plug it into a powered USB hub. A USB hub will also help to conserve the Pi's limited supply of USB ports. Either one of these options may introduce a new problem known as <b>back powering</b>, however, Ordinarily, you'd power the Pi from its own power source, and it would then supply power to the external hard drive. A well-designed USB device is supposed to only receive power through its USB cable, even if they have their own power supplies, but some cheaper drives simply connect the power lines from their own power supply and USB cable together. In cases like these, the power ends up flowing both directions on the USB cable, and when the power is removed from the Raspberry Pi, this back power can keep the Pi running. Older models could be powered entirely this way, which was convenient, but definitely not what the designers had in mind. Newer models could not be started up this way, but they can be kept awake by the drives back power once they're running. Future models may do away with this entirely, so you'll need to test your own gear to see how it behaves. Plugging both the Raspberry Pi's power supply, as well as the drives into a power strip together will solve this problem with one switch controlling both device's sources of power.
 (see vid to understand clearly)
 <br/>
 
 
 <b>Filesystems</b><br/>
Those of you coming from the Windows world are used to thinking of hard drives as separate entities. You have your C drive, which is probably where Windows lives, you may have a second hard drive called D, and you probably have some sort of DVD of Blue-ray drive, perhaps called E. Each new device simply takes the next available drive letter, but they're completely separate silos for keeping your stuff in. Linux on the other hand is what's called a <b>unified file system</b>. There is only one root, and everything else appears below that somewhere in a hierarchy of directories, even devices that aren't for storing files. All devices are represented by an entry in the device, or dev directory, but you can't go digging through their contents just yet. <b>The entries in the dev directory represent the physical devices themselves, not their contents.</b>
 <br/>
 
 <b>Linux Device Names</b>
 Before we start hooking up the drive, I should tell you a little bit about how Linux names storage devices. <br/>
When I plug a USB hard drive into the Raspberry Pi, it'll be assigned a kind of shorthand name, which you can expect to be SDA, which stands for SCSI Device A, and it's a little like a drive letter in Windows. If I hook up a second drive it'll be called SDB, and so on. Most drives we use these days will use one of two interfaces. If it's an internal drive, it's probably SATA, or Serial AT Attachment. If it's an external drive it's either using eSATA, which external Serial AT Attachment, or USB, for Universal Serial Bus. <br/>
Before either of these standards, most computers were using PATA, or Parallel AT Attachment. PATA itself was an evolution of its predecessor IDE, or Integrated Drive Electronics. But way back before any of that was SCSI, or Small Computer System Interface. SCSI was used for everything from hard drives to printers to scanners, and it used a dizzying array of thick, bulky, unwieldy cables that daisy-chained from one device to the next, and devices required a lot of manual configuration before they'd work. It was not exactly plug and play. Linux still likes to think of storage devices in SCSI terms though, so our external hard drives will be named SDA, SDB, etc. This does present a problem though.<b> SCSI required that each device in a chain be assigned a number, usually through a set of switches or a dial on the back of the device, and it used this address to determine which drive was first, second, third, and so on. </b> PATA and IDE used each drive's position on the cable, or jumpers on the back of the device to determine order, and SATA only connects a single device to each numbered port, but USB has no way of determining order. Which drives gets to be SDA depends entirely on which one is ready first when the system starts looking for devices. Since this is a server we're building, it's entirely likely that more drives will be added later on, and so we'll need to address this problem so that one day when you reboot, the pictures don't end up where the music belongs, and vice versa. We'll do this by mounting file systems, not by their labels, but by their IDs.
 
 
 
 
<b> Hard Drive Partitions </b>

A hard drive can be divided up or partitioned into multiple pieces by the drive's partition table. This is like an index and keeps track of where each partition begins and ends. Sometimes this is done for organizational purposes, sometimes it's done to support multiple operating systems on the same drive, and sometimes you don't even want to divide up the drive, but the partition table will still be there to remember your decision. Just as there are different kinds of operating systems and different kinds of file systems, there will be different kinds of partition tables, each with their own strengths and weaknesses. <br/>
The two main partition table formats in use today are the Master Boot Record, or MBR, and the GUID Partition Table, or GPT. The master boot record has been around since the first days of PCs in the early '80s, and it's supported on nearly all operating systems. It does cap out at 2 TB of storage though, and while this may have been an unthinkably ridiculous amount of storage at the time, it's easily swamped by a single family's storage and backup needs these days. The GUID partition table is a more recent addition appearing in the late '90s. It's supported on most modern operating systems and has a 9 ZB storage limit. One day we may possibly look back on this and laugh at how small that has become, but for right now, that's enough storage to hold the entire contents of the internet. Your home network won't need that much storage, but it probably will need more than 2 TB. And finally, a GUID partition table identifies its partitions using Globally Unique Identifies, or GUIDs. This will be important later on in the course when I show you how to boot from the hard drive.
<br/>


<b> Choosing a Filesystem </b> <br/>
You'll also need to make a choice about what file system to use. You could choose to format the hard drive with the NTFS format used by Windows, or using the Ext4 format used by Linux. There are other types of file systems available, but these are the two most common ones. <br/>
NTFS is more portable, being generally understood by most computers, including Mac and larger Linux installations. The Raspbian OS on the Raspberry Pi doesn't understand it without installing additional drivers though, and drives mean additional CPU load on the Raspberry Pi when you're using that drive.<b> Ext4 on the other hand is native to the Raspberry Pi, but isn't understood by Windows, meaning that Windows would require additional drivers in order to use the drive, but the Raspberry Pi would have an easier time of it. </b> If you think you'll be wanting to remove the drive from the Pi and connect it to other computers on a regular basis, then you may want to choose NTFS. If you intend to leave the drive attached to the Pi and only use it over the network, then you'd be better off with Ext4. Gather up your drive and let's get started.

<br/>








