#!/bin/bash

if [ ! -f lib/lib.sh ]
then
	echo "Error: lib/lib.sh not found!"
	echo "make sure you are in the root of the server repo"
	exit 1
fi

source lib/lib.sh

echo "*** server-plugin-frontail ***"
echo "starting side runner with the following config:"
echo "url=$CFG_PL_FRONTAIL_URL"

# give the server time to start
sleep 10

./lib/plugins/server-plugin-frontail/lib/main.sh

