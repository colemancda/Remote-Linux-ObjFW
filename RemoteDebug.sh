#!/bin/sh

#  RemoteDebug.sh
#  Remote Build
#
#  Created by Alsey Coleman Miller on 3/14/15.
#

# Start GDB Server on target device

ssh -T $REMOTE_USER@$REMOTE_IP "cd $REMOTE_SOURCE_DIR; gdbserver :1234 $DEBUG_BUILD_DIR/$PRODUCT_NAME"

# Start GDB locally

$SCRIPT="echo gdb-remote $REMOTE_IP:1234 | lldb"

osascript -e 'tell application "Terminal" to do script $SCRIPT'