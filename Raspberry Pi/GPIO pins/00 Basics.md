General purpose input/output on the Raspberry Pi is a gateway to the internet of things.
It can control external electronics and read sensors through this interface. 
This is called the GPIO and sets the Raspberry Pi apart from other computers. 
<br/>
- We'll discuss the various pinout schemes for GPIO, and explain a few ways to interface components to the board.<br/>
- Then, I'll program logic for the circuits with Python, a clean and concise programming language. <br/>
- Finally, I'll explore pulse width modulation, a stellar technology that is buried within the GPIO library. <br/>
Learning how to use GPIO will open up a whole new world of electronics experimentation. <br/>
<br/>
- This course will explore the basics to connect the Raspberry Pi general-purpose input-output, or GPIO, to
external electronic devices. I'll show you where to find the GPIO on different models of the Raspberry Pi, the multiple types
of GPIO headers, and the difference between input and output pins.<br/>
- I'll also cover some basic electronics concepts so you can safely connect the GPIO to the outside world. There's nothing in 
the Raspberry Pi that will harm you.<br/>

We're only working with five volts and a maximum of two amps. But you can fry the Raspberry Pi rather easily, if you're not 
careful. When we have some electronics connected, the Raspberry Pi needs to be programmed to use them. <br/>
I'll teach some <b> Python and Scratch programming </b> to control the GPIO, actuate motors, and read sensors.<br/>


File setup:
sudo apt-get install git-all //installs git
cd Desktop
git clone git://github.com/mnr/RPi_GPIO

