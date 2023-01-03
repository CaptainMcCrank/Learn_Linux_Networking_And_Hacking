

# Getting started
Download the [firmware image](https://na-iiab.s3.us-west-2.amazonaws.com/NA_IIABSHRANK.IMG.tar.gz?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAXYO4E3MJVQXIPO3B%2F20220301%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220301T182653Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=3ef0963c1e25896ed5dbdd7ae7322c04a85c86c63d642cd5a22b45abe30a7a89 )

Please note, that this URL will expire in 1 week (Monday, May 8th, 2022)

From the command line, extract the file:

`tar -zxvf NA_IIABSHRANK.IMG.tar.gz`

Use a tool like [Etcher](https://www.balena.io/etcher/) to burn the extracted image to your sd card. 

Plug the SD card into your Raspberry Pi.  Connect the pi to your ethernet network to enable the device automatically update with the latest versions of the podcast.  Connecting to your lan is optional- but without connectivity, your device will not get new episodes of the podcast.

You'll see a wifi network after boot up called "Joinme"

Devices that attach to this network will not be able to access the Internet.  When they try to browse to any pages, they should be redirected to the portal.  e.g. www.example.org will only serve content locally from the hotspot.  **THIS REDIRECTION IS NOT 100% RELIABLE.**  If users browse to previously-accessed sites that had [HSTS](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security) enabled (e.g. https://www.google.com) or if they browse to an SSL based url they will only see an SSL error.  I think I can make progress on redirecting SSL sites for pages that don't use HSTS.  I'm compromising for now on getting feedback fast, but I expect to make progress on this problem later in March. 

If the hotspot is running and you have a device attached, you can always browse directly to the hotspot using the following urls:

http://na-internet-in-a-box.itm
http://33.33.33.33

The stream is accessible from the main page, but you can also access it directly:
http://na-internet-in-a-box.itm:8000/itm

The raw mp3 files area availble here:
http://na-internet-in-a-box.itm/mp3s/

You can access the discussion forum at http://na-internet-in-a-box.itm/cgi-bin/

## What should work:

1. A podcast play button should work at http://na-internet-in-a-box.itm
2. Podcast stream at http://na-internet-in-a-box.itm:8000/itm
3. Discussion forum should be able to accept anonymous posts at http://na-internet-in-a-box.itm/cgi-bin/  (If someone posts something offensive, you can moderate the board through the web app by using the ADMIN_PASS found in /var/www/html/cgi-bin/config_defaults.pl.  Please consider changing the password.  If anyone would like to contribute, I could use a few scripts for introducing device-specific material to reduce the risk of the known-password-based attacks)
4. Links to raw mp3 files at http://na-internet-in-a-box.itm:8000/itm
5. If you want to log into the device and admin it, you should be able to ssh into it from your ethernet network.  Username is pi. Default password is ChangeDefaultPWD3331333.  SSH access from wifi network will be disabled in the next version of the build. 

## Known bugs:
1. If a user tries to access an ssl site, they're going to get an unrecoverable SSL error.  HSTS broke my ability to reliably serve the portal if people attempt to access.  I think I can still vend ssl content for non-hsts sites (SSL Warning->Advanced->Continue to this site [may be unsafe]warning-> viewable captive portal)by either futzing with lighttpd ssl settings or switching to another web server.
2. There are placeholder gradients for the different features on the main page.  I need to add some images at some point.
3. Extra Div doesn't point to anything currently.  I'm open to some suggestions for useful off-grid emergency file sharing, educational resources, etc.  I was going to explore adding resources like the following: 
https://learningequality.org/ka-lite/
https://learningequality.org/kolibri/
https://ka-lite.readthedocs.io/en/latest/installguide/tutorial_rpi.html
https://phet.colorado.edu/en/offline-access
https://en.wikibooks.org/wiki/Main_Page

I'd rather have something that's a little more of a value for value manifesto and associated material that helps people understand what they've found but I'm open to suggestsions. 

# What can you do to help?

There are 4 ways to help:
1. Help me identify bugs that need to be fixed by filing any problems with a bug report at this [url](https://github.com/CaptainMcCrank/NA_Internet_In_A_Box/issues)

2. Help me identify what documentation I need to write/improve by Filing bugs about bad/inadequate documentation [here](https://github.com/CaptainMcCrank/NA_Internet_In_A_Box/discussions/categories/documentation-requests) 

3. Help me identify ways to make this solution more interesting to you by filing feature requests at this [url](https://github.com/CaptainMcCrank/NA_Internet_In_A_Box/discussions/categories/ideas)

4. Provide financial support by becoming an executive producer of the device.  I accept bitcoin at bc1qrjwmyp8u7n4a3x5j6ntwjwxpaqa4z7euu895he  You will get a mention in the Readme file and can tell people you an executive producer of the NA Hotspot.  Please drop me a note with directly via email (p at mccannabanana com )with your sender's address if you'd like to be published in the Readme.md as an EP

# I'm a DNB/dev/future CS student with some coding ability.  What can I do to help?  

I need python unit-test scripts that can be executed from a client that's attached to the hotspot.  The objective is to confirm that all key features work on new builds of the device after development.  This will be integrated into my build process to make sure that we don't publish images that with failures lurking.  My current testing ad-hoc and prone to misses.  Help me establish a mechanism that confirms everything works correctly before publishing a new image.  For those who help, I offer a nice referral note for your college/job applications.  Here are some potential unit test ideas:


1. Validate that the iceS client is running correctly after boot and report a simple status of fail if the client is not running and vending content that can be served by the Icecast server.
2. Validate that the Icecast server is running correctly after boot and report a simple status of fail if the server is not running and accessible from wifi clients.
3. Validate that posts to the discussion board work correctly and can be deleted.  Report fail if posts cannot be made or deleted with admin password.
4. Validate that the repository of static MP3 files are accessible and that the directory has content. Report status of fail if mp3s are not listed or not playable.
5. Validate that http://33.33.33.33/index.html and http://na-internet-in-a-box.itm/ is served to wifi clients.  Report fail if it is not.
6. Validate that requests to http://example.org redirect to the internal portal.  If the portal's index.html is not presented, report fail.
7. Validate that SSH daemon on 33.33.33.33 is not accessible from wifi clients. Report fail if it is accessible. 
8. Validate that SSH daemon is accessible on eth0 interface.  Report fail if not.



 


