#!/bin/bash

# TODO: refresh when logfile changes

frontail -h 127.0.0.1 --disable-usage-stats "$(./show_log.sh --filepath)"
