<b>Introduction</b><br/>

In this module, we'll set up file sharing and finally be able to call this project a functioning server. We'll start by installing Samba, and then we'll look at two different ways to set up shares, using a plugin to the Webmin front-end, and also by editing configuration files directly from the command line. Along the way, we'll learn about Linux permissions as well. When this module is complete, you'll have a working file server with a public share accessible by the other computers on your home network.
<br/>

Samba is a software package for sharing files over a network using the Server Message Block, or SMB protocol. SMB is a sharing protocol used by Windows and Mac computers. More and more often these days you'll see it referred to as Common Internet File System, or CIFS. Since just about any modern OS, including the Raspberry Pi, either understands or can be made to understand SMB, it's the ideal cross-platform file sharing solution for the Raspberry Pi home server.
<br/>

Samba is readily available in the standard Raspbian apt-get sources, so you just have to install it using apt-get. There are two different packages to install
$sudo apt-get install samba <br/>
$sudo apt-get install samba-common-bin <br/>
When the installation finishes, you'll be ready to start setting up shares. First you'll need to make something to be shared. Create a public directory on the data partition of the external hard drive. You could just share the whole drive of course, but creating a directory lets you decide what will and won't be shared over the network. If you mounted your hard drive at /mnt/data like I did, then you would create a new public directory by first navigating to the mnt folder, and then double checking that your folders are there, remember I set up two so I could demonstrate ntfs as well, so I'll say sudo mkdir for make directory, that'll be /mnt/data/public. And I'm going to do the same thing for the ntfs folder that I created.
<br/>

<b> Linux Permissions </b> <br/>
In the Linux world, There are three different permissions that can be granted to a file or directory. They are read, write, and execute. These permission can be granted to three different kinds of users. There's the file's user, which is the user that created the file or directory by default, although this can be reassigned later on. Files and directories also have a group, which is named collection of user accounts. And finally there's other, which is everyone else. You'll sometimes see file and directory permissions represented by a three or a four-digit number. Each digit in that number represents a group, and the individual binary bits within that digit represent the permissions. For instance, if I wanted a file's user to have the ability to read, write, and execute that file, the permissions would be 4 + 2 + 1, or 7. If I wanted the file's group to have read and execute permissions, but not write, that would be 4 + 1, or 5. And if I wanted everyone else to have just read access, that would just be 4. The first digit is special and means different things to different kinds of files, so we'll just leave that at 0. Taken all together, the file's permissions would be represented by the number 754. If you forget which bit means what, you can always go to permissions-calculator.org to find the number for the permissions you want, or to decode a number to find out what it means.
<br/>

....


