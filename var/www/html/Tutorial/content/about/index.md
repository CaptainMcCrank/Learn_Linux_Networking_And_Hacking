---
title: "About"
date: 2023-02-10T16:12:47-08:00
draft: false
---
Safely learning Security is hard.  We all need realistic environments to learn security fundamentals. Over the the last 10 years, [Patrick McCanna](https://www.patrickmccanna.net) supported a program that gave kids access to realistic hacking learning environments. r00tz asylum was a kids-oriented ethical hacking educational village at Defcon. We helped kids learn about network enumeration with labs that taught them about scanning & vulnerability discovery. We showed basic vulnerability exploitation by teaching them how to exploit the Shellshock vulnerability. We taught them basic linux commands to move around systems in order to deface websites. We helped kids learn about election security with contrived sql injection demos.

Every year, people asked if we could share the labs. But the labs were too complex and the files were too large for easy sharing. Many of the labs were partly run in the cloud.

The labs were not designed to be resilient to a loss of connectivity. It was volunteer work that produced the labs. People did what they could in the time they could make. But the labs were brittle. This has annoyed Patrick for years.

In retrospect, it’s miraculous that r00tz came out a success. We had hundreds of kids flying to an event where, if the Internet failed there was no plan b. Those kids would be bored. The parents would be pissed. And Patrick would have been annoyed! This would have been an avoidable catastrophe. Well it never happened. But it could have!

So I built a lab that doesn’t require connectivity. It has the added benefit of being easy to run without experts present. Here is a firmware image for the [Raspberry Pi](https://www.raspberrypi.com/products/raspberry-pi-4-model-b/)

It configures your pi to run as a wifi access point. You can use it to practice wifi hacking & learn basic linux hacking. Patrick's daughter described it as kind of a hacking “escape room.” There’s a web page hosted on the Access Points that gives students some tips once they’ve gotten past the first challenge. You should start with three simple goals:

- Discover the Wifi password.
- Identify a potential point of entry for getting shell access on the access point.
- Gain shell access to the Access point.

From there- you can pivot to more advanced topics. You could use this firmware to learn Linux by making changes to the software on the device. You could use it to test IoT devices for security vulnerabilities. You could use it as a local web server and host some pictures. These devices are almost like gaming consoles that can be transformed into new experiences with the right knowledge.

Patrick is making his way through my security challenges with his daughters. As they ask questions, he's taking notes and he'll post them on his blog at [patrickmccanna.net](https://www.patrickmccanna.net). But you don’t have to wait for him. The software is all ready to go! I used the same open source software that commercial Access Points use (Hostapd & DNSMasq).

With this lab, you can go from simple password breaking and move on to more advanced topics. You can use this lab to get practical experience in Linux, Internet Protocol, Authentication, Network Reconnaissance, Web development, embedded wifi access points and Security Defense.


That’s all there is. Plug the sdcard into your pi, power up. You don’t need to plug in a monitor or keyboard. You don’t need to connect it to the Internet. It’s ready to go. Try to find the wifi network you’ve created. Start hacking it.

Here are your challenges:

- Challenge 1: What is the Wifi password?
- Challenge 2: How did you gain remote access to the running access point?
- Challenge 3: How could you modify the default web application?
- Challenge 4: What could you do to secure the access point?
- Challenge 5: What do you need to do to make it a secure, working wifi access point?
If you need more granular challenges, take a look at this [post](http://localhost:1313/challenges/)

Happy hacking! If you get stuck or run into problems, file an issue here:

https://github.com/CaptainMcCrank/Learn_Linux_Networking_And_Hacking/issues
