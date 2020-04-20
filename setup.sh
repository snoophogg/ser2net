#!/usr/bin/env bash

[ -z ${DIVISOR} ] && DIVISOR=0

if [[ $DIVISOR -ne 0 ]] ; then
    echo "Set custom baud flag..."
    setserial -a /dev/ttyUSB0 spd_cust
    echo "Set custom divisor..."
    setserial -a /dev/ttyUSB0 divisor $DIVISOR
fi

echo "Starting ser2net..."
/usr/sbin/ser2net -d -u

