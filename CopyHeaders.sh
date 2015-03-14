#!/bin/sh

#  CopyHeaders.sh
#  Remote Build
#
#  Created by Alsey Coleman Miller on 3/14/15.
#

rm -rf ./sysroot/*
mkdir -p sysroot/usr
mkdir -p sysroot/usr/local

scp -r $SSH_USER@$SSH_IP:/usr/include ./sysroot/usr/include
scp -r $SSH_USER@$SSH_IP:/usr/local/include ./sysroot/usr/local/include