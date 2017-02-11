<b> Intro </b> <br/>

At this point in the course, the Raspberry Pi home server can share files over the network, and you can use this to play music and video files on devices that understand SMB file shares, such as other computers, some smart TVs, and dedicated media center devices. It's just a shared directory though with no frills, and may not provide the best user experience. In this module we'll set up the pi to act as a proper media server, sharing media files using the DLNA standard.

<br/>

<b> What Is DLNA? </b> <br/>
DLNA stands for Digital Living Network Alliance. It's a standards body that was started by Sony and Intel to establish and maintain a set of protocols for sharing media on a local network. If you have a smart TV or a Blue-ray player, it probably understands DLNA. Many popular media players such as Windows Media Player, MediaMonkey, VLC, and Plex can use it as well. DLNA goes beyond simple file sharing to allow a computer to act as a media server, organizing and serving files in a more intelligent, organized way. A client device can then ask the server for all the songs by a particular artist, for example, and get back the filtered results rather than every device on the network having to maintain their own private index of what's on the server. Remember that like any computer, the Raspberry Pi can bog down if you try to do too much at the same time, so if you're trying to watch a video in one room while someone else is listening to music or playing Minecraft over a VNC window, all while the server is busy trying to backup all of the other computers in the house, you're in for some disappointment. The reason we can use a Raspberry Pi as a home server in the first place is that generally speaking, it's not going to be performing all of its supported functions at the same time. If you plan to use the media server functionality pretty heavily, you might want to consider building up a second, dedicated Raspberry Pi media server. You'd follow all the same directions up to this point, giving your media server a different name and IP address of course. Personally I've had pretty good luck with just the one server so far.
<br/>


<b> Choosing a Media Server </b> <br/>
There are multiple media server packages available for the Raspberry Pi with differing levels of functionality. I'll examine two of the more popular ones for the Raspberry Pi. Which media server you choose will depend on what kind of Raspberry Pi you have, and how much you want to do with it. On the one hand you have MiniDLNA, which goes by the name ReadyMedia these days, although it's still generally known as MiniDLNA on the Raspberry Pi. It works with all models of the Raspberry Pi, all the way back to the original Model A. It has no user interface at all, although there is a module available for Webmin, but it's pretty minimal, and it's really nothing more than just another way to edit the configuration files, so I won't be using it in this build. In addition, the MiniDLNA in the apt-get sources is not always kept up to date, so you might find yourself a little behind when it comes to bug fixes. It does seem to be compatible with a wide range of media devices such as Windows Media Player though. On the other hand, there is Plex Media Server. It's only supported on Raspberry Pi 2 models due to the change from ARM6 processors to ARM7. Plex Media Server has a very nice, very polished user interface, and it can transcode some media files on the fly after applying a couple tweaks to the system, which you may need to reapply after performing updates. In addition, Windows Media Player doesn't seem to get along with Plex Media Server very well. It's a known issue and one that will hopefully be ironed out one day. Of course you can't run both of these at once since they both use the same port for communications, so watch the demonstrations for both in this module, make backups of your SD card and try them both out. See which one you like better and which one works best with your other devices.
<br/>

<b>Installing MiniDLNA</b><br/>
MiniDLNA has been available on the standard Raspbian apt-get sources for a while, and installing this version is pretty simple. You'll install MiniDLNA using apt-get the same way we've installed many other packages. Set up directories on the hard drive to house your media, configure MiniDLNA to know what kind of media is in each directory, and then you'll stream your media throughout the house. This might be sufficient for many users, and if it gets you everything you need, then there's no need to go any further, so let's start there.
<br/>







