#!/bin/sh

. "$HOME/_install_toSource.sh" || exit 0
cd "$INSTALL_PATH"

echo End >> freenet.ini

# Starting the node up
echo "Starting Freenet 0.7..."
nohup sh ./run.sh start 2>&1 >wrapper.log &
