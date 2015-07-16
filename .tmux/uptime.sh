#!/bin/sh
totalseconds=`cat /proc/uptime | cut -d"." -f1 | cut -d "," -f1`

minute=$((60))
hour=$((60*minute))
day=$((24*hour))

# Round bracket madness!
days=$(($totalseconds/$day)) # Calculate days
hours=$((($totalseconds-($days*$day))/$hour)) # Total - MinutesDay / Hour
minutes=$((($totalseconds-($day*$days)-($hours*$hour))/$minute)) # Total - MinutesDay - MinutesHour / minute


# Quick dirty padding fix.
if [ $hours -lt 10 ] ; then
  hours="0"$hours
fi
if [ $minutes -lt 10 ] ; then
  minutes="0"$minutes
fi

output=''
if [ $days -ne 0 ] ; then
  output=$days"d "$hours:$minutes
else
  output=$hours:$minutes
fi
echo $output
