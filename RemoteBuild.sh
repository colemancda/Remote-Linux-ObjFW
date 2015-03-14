#!/bin/sh

#  RemoteBuild.sh
#  Remote Build
#
#  Created by Alsey Coleman Miller on 3/14/15.
#

# Copy files to target device

scp -Cpr src $REMOTE_USER@$REMOTE_IP:$REMOTE_SOURCE_DIR