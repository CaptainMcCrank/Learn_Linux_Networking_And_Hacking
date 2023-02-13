

# Getting started
Download the [firmware image](https://https://s3.us-west-2.amazonaws.com/firmware.patrickmccanna.net/Firmware/pi_hack_me_ap.img.tar.gz)



`tar -zxvf pi_hack_me_ap.img.tar.gz`

Use a tool like [Etcher](https://www.balena.io/etcher/) to burn the extracted image to your sd card. 

Plug the SD card into your Raspberry Pi. 


## What should work:

1.Will spin up a wifi network
2.AP has a web server running on 10.10.10.1 that will give participants some tips on how to proceed.
 
## Known bugs:
1. Mobile devices will prompt you that you can't connect to the internet while you're attached to the hotspot.  Hit "keep trying" to proceed. 

 


