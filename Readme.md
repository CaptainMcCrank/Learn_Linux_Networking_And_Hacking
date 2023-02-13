# Learn Linux Networking & Hacking
by Patrick McCanna

## Overview
I created this firmware image to teach my daughter the basic hacking skills that can give her a reasonably profitable shot at revenue.
Hopefully she never needs to use this :D

This firmware recipe 

1. turns your pi into a wifi hotspot
2. exposes an ssh server
3. exposes a web server that can be used to publish your first private web page.
4. exposes a web server that can be used to host vulnerable web apps for CTF testing
5. exposes a web server that can be used to show you what a server admin can see when you're browsing their site.

##Prerequisites

##Build Overview


1. Acquire hardware
2. Install and configure a [BuilderHotspot](https://firmware.patrickmccanna.net)
3. Clone the Learn Linux Networking & Hacking repo in your playbooks directory: ``` gh repo clone CaptainMcCrank/Learn_Linux_Networking_And_Hacking ```
4. Activate a pi with a recipient image with the hostname AnsibleDest.  Tune it to attach to your builderhotspot network.  
5. Purge any old instances of the AnsibleDest.local from your ssh-key history:
``` ssh-keygen -f "/root/.ssh/known_hosts" -R "ansibledest.local" ```
6. Copy your ssh key from the builderhotspot to the AnsibleDest Machine:
``` ssh-copy-id pi@ansibledest.local ```


### Acquire hardware
The Learn Linux Networking & Hacking image requires a raspberry pi 3+

