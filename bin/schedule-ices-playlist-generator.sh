#!/bin/sh
#greg download 0 

FILECOUNT=$(ls /home/pi/Podcasts | wc -l)
DELETECOUNT=$(expr $FILECOUNT - 3)
#Greg can double download files- it adds a _ at the end of the name if it's a dupe.  This next line finds and deletes redundant downloads.
find /home/pi/Podcasts -maxdepth 1 -type f -iname '*_*' | xargs -n1 rm 

if [ $FILECOUNT -gt 3 ] # if we have more than 3 podcasts, we'll sort them by their name from highest to lowest and delete all but the top 3 (i.e. the most recent) episodes to maintain disk space.
then 
	find /home/pi/Podcasts -maxdepth 1 -type f -not -path '*/\.*' | sort | head -n $DELETECOUNT | xargs -n1 rm
fi

find /home/pi/Podcasts -maxdepth 1 -type f -not -path '*/\.*' | sort > /etc/ices2/playlist.txt
