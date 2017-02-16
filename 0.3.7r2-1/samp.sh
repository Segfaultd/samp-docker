#!/bin/bash
set -e

cd /home/server/
case "$1" in
    'start')
        exec nohup ./samp-svr
        ;;
    'stop')
        exec killall samp-svr
        ;;
    'restart')
        killall samp-svr
        sleep 1
        exec nohup ./samp-svr
        ;;
    *)
        echo "Usage: $0 start/stop/restart"
        exit 1
esac