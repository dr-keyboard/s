#!/bin/bash

#This downloads a given set of songs from freemusicarchive.org, into the current directory.  They have strange names, so it should be followed with line 2, which is commented out.
curl $1 | grep "music/download/" | tr -s "\"" "\012" | grep "music/download/" | xargs wget -

#for x in *; do mv $x ${x}.mp3;done

#
# The following is notes made while trying to get the above to work.
#

#curl http://freemusicarchive.org/genre/Classical/ | grep "music/download/" | tr -s "\"" "\012" | grep "music/download/" | xargs wget -

#curl http://freemusicarchive.org/genre/Classical/ | grep "music/download/" | tr -s "\"" "\012" | grep "music/download/" | tr -s "/" "\012" | grep -v "download" | grep -v "music" | grep -v "freemusicarchive.org" | grep -v "http:"

#NAMES="`curl $1 | grep "music/download/" | tr -s "\"" "\012" | grep "music/download/" | tr -s "/" "\012" | grep -v "download" | grep -v "music" | grep -v "freemusicarchive.org" | grep -v "http:" `"


# Use this to rename all of the strangely named files as mp3's
#for x in *; do mv $x ${x}.mp3;done

#then open in easytag, remove comments, copyright, url.  Rename files, done
