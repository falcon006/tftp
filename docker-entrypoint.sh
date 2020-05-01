#!/bin/sh
set -x
LOG=$1.log
service xinetd start
sleep 1
tail -f /var/log/$LOG
