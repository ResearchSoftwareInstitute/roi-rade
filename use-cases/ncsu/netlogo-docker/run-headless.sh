#!/bin/sh
cp /de-app-work/* /opt/netlogo
/opt/netlogo/netlogo-headless.sh $1 $2 $3 $4 $5 $6
mv /opt/netlogo/$6 /de-app-work
