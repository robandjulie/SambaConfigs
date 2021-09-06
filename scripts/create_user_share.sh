#!/bin/bash

USERSFOLDER='/srv/trunk/home'
GROUP=nihilsum

if [ ! -e $USERSFOLDER/$1 ]; then
	zfs create $USERSFOLDER/$1
	chown $1:$GROUP $USERSFOLDER/$1
    chmod -R 700 $1 $USERSFOLDER/$1
    # ln -s /tank/public $USERSFOLDER/$1/Public
fi
exit 0
