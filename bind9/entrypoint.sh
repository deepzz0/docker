#!/bin/sh

# generate control channel key if requested
if [ ! -f /etc/bind/rndc.key ] && [ "${ENABLE_CONTROL_CHANNEL}" = "true" ]
then
  echo "/etc/bind/rndc.key not found; generating control channel key"
  rndc-confgen -r /dev/urandom -a -u named
elif [ ! -f /etc/bind/rndc.key ] && [ "${ENABLE_CONTROL_CHANNEL}" != "true" ]
then
  echo "/etc/bind/rndc.key not found; control channel not enabled"
else
  echo "/etc/bind/rndc.key found; skipping control channel key generation"
fi

# execute CMD
exec "${@}"
