#!/bin/bash

if [ -z $1 ]
then
echo "[*] usage need ./zone.sh domain.come"
exit 0
fi

for i in $(host -t ns $1 | cut -d " " -f 4);
do
host -l $1 $i | grep "has address"
done
