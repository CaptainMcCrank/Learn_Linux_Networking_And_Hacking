---
title: "Challenges"
date: 2023-02-05T20:23:14-08:00
draft: false
---
# Easy Challenges

1. What is the Wifi Password?
2. When you are connected to the network, what is default gateway ipaddress and hostname of the default gateway?  What is the IP address that was assigned to the device you were attached to?   What is the DNS server’s IP address while you’re connected to the hotspot?  (Need a clue?  check out this video: https://www.youtube.com/watch?v=6PZp7LNKHgk)
3. Are you able to connect to the Internet over the hotspot in its default configuration?  How did you determine this?  Why does or doesn't it work?
4. What possible entry points exist for gaining access to the Hotspot?  Describe you tested to discover if the attack is possible?
How can you gain shell access to the device?  Do not continue to the next section until you have been able to gain access

# Medium Challenges

1. How do you change the password on the Access Point?
2. How do you configure SSHD so that you don’t have to rely on passwords?
3. What is the operating system version of the device?
4. What services are listening on the device?
5. What web server is running on the device?
6. Describe any web page you found on the device.  What was the URL?  Were you able to view it?
7. Where are the logs for the webserver stored?
8. Where are the files for the webserver stored?
9. Can you view the web page?

# Advanced Challenges

1. What is HostAPD?  
2. What is an interface?
3. What interface is HostAPD running on?
4. What is the ipaddress on wlan0? 
5. What is the ipaddress on eth0?  Why?
6. Where are the HostAPD access logs?
7. What file do you need to edit to change the SSID, Password and wifi security settings?
8. What is IP forwarding?  What is ip Masquerading?  
9. What is a “router”? 
10. What are the major steps for turning our Hacking hotspot into a working wifi access point that gives access to the Internet?
11. What is IP Forwarding? How do we enable it?
12. How can you change your device into a working access point?
13. How do you get connectivity working on the Ethernet Interface?
14. Plugging it into a network with DHCP
15. Plugging it into a network with static ip addresses
16. How do you turn on ip forwarding in linux?
17. How do you make it a permanent change?
18. How do you activate Network Address translation?
19. How do you vend IP addresses to devices that are attached to your network?

# Privacy/Security Defense Challenges

1. What does an admin know about you while you’re attached to the device?  
2. What do you see when running tail –f /var/log/hostapd.log while a device attaches to the wifi network?
3. What do you see when running tail-f /var/log/dnsmasq.log while a device attaches to the wifi network?
4. What do you see when running tail –f /var/log/lighttpd/access.log while a device browses to the web site?
5. What are the privacy implications for connecting to a wifi network?
6. What information does an Access Point operator have about you if you attach to that network?
7. What kind of attacks can an admin execute while you’re attached to the device?
8. What is packet sniffing?  How could it be done?
9. What is a MITM attack?  How could it be done?
10. What is DNS hijacking?  How could it be done?
11. How can you harden this access point so that no one could reproduce the attacks you used?
12. How do you install software?
13. How could you configure SSHD to resist brute force password guesses?
14. What is Fail2Ban
15. What is nftables?

