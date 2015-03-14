#!/bin/sh

#  CopyHeaders.sh
#  Remote Build
#
#  Created by Alsey Coleman Miller on 3/14/15.
#

rm -rf ./sysroot/*
mkdir -p sysroot/usr
mkdir -p sysroot/usr/local

scp -Cpr $REMOTE_USER@$REMOTE_IP:/usr/include ./sysroot/usr/include
scp -Cpr $REMOTE_USER@$REMOTE_IP:/usr/local/include ./sysroot/usr/local/include