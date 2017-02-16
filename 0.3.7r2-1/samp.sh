#!/bin/bash
set -e

cd /home/server/
case "$1" in
    'start')
        exec nohup ./samp03svr
        ;;
    'stop')
        exec killall samp03svr
        ;;
    'restart')
        killall samp03svr
        sleep 1
        exec nohup ./samp03svr
        ;;
    *)
        echo "Usage: $0 start/stop/restart"
        exit 1
esac