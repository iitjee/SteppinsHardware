i've ignored raspberry pi part (since it used x10)
we'll get down to server part



Overview:
1. Enabling remote setup (SSH)
2. Samba for Pi (This is a tool that allow Linux computers to behave as if they were part of a Windows work group so that you can access their file systems the way you would with a shared drive on a Windows computer. This is also going to allow your Windows computer to identify the Pi by its machine name rather than by its IP address.)
3. RDP, the stand Window mechanism for remoting into other computers. There is a utility out there that you can install onto you Pi to allow this sort of access.
(or) VNC, which is a remote desktop access software that works across a variety of operating systems. 
4. Installing the programming tools you'll need in order to proceed with the REST endpoint.


1. ```sudo apt-get install SSH```
A lot of versions of Raspbian are going to come with SSH pre-installed, but if they don't that is how you would install it.
```sudo/etc/init.d/ssh start``` and then do some adjustments in update-rc.d file to persist the SSH even after reboot
(you can simply also do by going to menu to enable ssh)

2. 
```sudo apt-get install samba```
```sudo apt-get install samba-common-bin``` // this is going to give you a series of utilities around Samba
Now ctrl+R and type \\192.168.xx.xx and you'll get a file explorer in windows itself!!
nothign will be visible now

Then edit the samba config file:
```sudo nano /etc/samba/smb.conf```
press ctrl+w to search for 'homes'
and change 'browserable' setting from no to 'yes'
This is going to let us take a look at the 'home' directory when you use that ctrlR thing


now on top of [homes], write
```
[pi]
path=/home/pi
read only = no
writeable = yes
browserable = yes
guest ok = yes
create mask = 0755
directory mask = 0755

[home]
....
```

now press ctrl+r and type \\raspberrypi
So you're pretty well set up to start using this as if it were just anything on a Windows network and you can see that we've also now gained the ability to see it as Raspberry Pi instead of with just the IP address. 

```
sudo apt-get install python-pip
sudo apt-get install git
```







