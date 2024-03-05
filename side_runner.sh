#!/bin/bash

if [ ! -f lib/lib.sh ]
then
	echo "Error: lib/lib.sh not found!"
	echo "make sure you are in the root of the server repo"
	exit 1
fi

source lib/lib.sh

if [ ! -x "$(command -v frontail)" ]
then
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi
if [ ! -x "$(command -v frontail)" ]
then
	echo "Error: please run $(tput bold)npm i frontail -g$(tput sgr0)"
	exit 1
fi


echo "*** server-plugin-frontail ***"
echo "starting side runner with the following config:"
echo "url=$CFG_PL_FRONTAIL_URL"

# give the server time to start
sleep 10

# plugins get restarted on server restart
# so this logfile should always be current
# as long as the server does not rotate logs without restart

frontail -h 127.0.0.1 --url-path /frontail --disable-usage-stats "$(./show_log.sh --filepath)"
