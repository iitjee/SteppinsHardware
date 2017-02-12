There are three different GPIO configurations, based on the model of Raspberry Pi you're working with. The configuration is important to know and it's easy to identify. The Raspberry Pi Model A and B, each have 26 pins arranged as two rows of 13. On both of these models, the pins are located along the top edge, next to the RCA video jack. The Raspberry Pi Models A+, B+, and Model 2 all have 40 pins arranged as two rows of 20.
<br/>
<br/>
On all of these models, the GPIO pins are easy to identify. An interesting thing to remember about the 40-pin GPIO connectors is that they are the same 26-pins on the low end as the Model A and B. The Raspberry Pi Model 3 also has 40 pins, although the board looks slightly different. Significantly different is the Model Zero. The Model Zero also has a 40-pin set up, but the pins are not populated, there are no wires coming out of the holes, and if you want to use a Raspberry Pi Model Zero, you'll need to insert your own wires and solder them in place.
<br/><br/>
The Raspberry Pi Compute is designed for industrial strength computing, and doesn't have any GPIO at all, rather, all of the broadcom signals go out of the fingers at the bottom of the board. If you're going to use the Raspberry Pi Model Compute, you're probably doing some pretty serious work and you're beyond the scope of this course. I won't be discussing the Raspberry Pi Model Compute any further in this course.
<br/><br/>
The Raspberry Pi can be programmed in many different languages. C++, Java, Mathematica, Ruby, Lua, Smalltalk, and more. But most commonly, it's programmed in either Python or Scratch. Both Python and Scratch are installed as part of Raspbian, the most common operating system used with the Raspberry Pi.
<br/><br/>
Throughout this course, we'll use Python and Scratch to illustrate how to program the Raspberry Pi GPIO. You may choose a different language, but be aware that GPIO support, in those languages, may be outdated or non-existent. If you are using Python, you'll find it's already installed with the latest version of Raspbian.
<br/><br/>

Scratch support of GPIO is easy under the latest version of Raspbian. Scratch is already installed, as well as the necessary GPIO libraries. If you're using the latest version of Raspbian, there isn't anything left to do. GPIO support on earlier versions of Raspbian required a custom version of Scratch. It's gonna be easier to just install the latest version of Raspbian.
