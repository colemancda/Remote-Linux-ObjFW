#!/bin/sh

#  RemoteBuild.sh
#  Remote Build
#
#  Created by Alsey Coleman Miller on 3/14/15.
#

# Copy files to target device

scp -Cpr src $REMOTE_USER@$REMOTE_IP:$REMOTE_SOURCE_DIR
scp -Cpr external $REMOTE_USER@$REMOTE_IP:$REMOTE_SOURCE_DIR

# Build on target device

ssh $REMOTE_USER@$REMOTE_IP 'cd $REMOTE_SOURCE_DIR; mkdir -p build; objfw-compile -o build/$PRODUCT_NAME src/main.m'
