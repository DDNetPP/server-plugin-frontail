#!/bin/bash

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

# plugins get restarted on server restart
# so this logfile should always be current
# as long as the server does not rotate logs without restart

frontail -h 127.0.0.1 --disable-usage-stats "$(./show_log.sh --filepath)"
