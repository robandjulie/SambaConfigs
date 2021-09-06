#!/bin/bash

TMFOLDER="/srv/trunk/srv/timecapsule"

if [ ! -e $TMFOLDER/$1 ]; then
	mkdir $TMFOLDER/$1
	chown $1:"time_machine" $TMFOLDER/$1
    chmod -R 700 $1 $TMFOLDER/$1
fi
exit 0
