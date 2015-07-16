#!/bin/sh
uptime=`uptime -p`
count=`uptime -p | tr -s " " "\012" | wc -l`
set -- junk $uptime
shift

if [ $count -eq 3 ]
then
    echo "00:$2"
fi

if [ $count -eq 5 ]
  then
      echo "$2:$4"
fi

if [ $count -eq 7 ]
then
    echo "$2d $4:$6"
fi

if [ $count -eq 9 ]
then
    # 2 weeks, 4 days, 6 hours, 8 minutes
    echo "$((7*$2 + $4))d $6:$8"
fi
