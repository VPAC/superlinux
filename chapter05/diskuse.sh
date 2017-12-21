#!/bin/bash   
DU=diskuse$(date +%Y%m%d).txt   
du -sk * | sort -nr | cut -f2 | xargs -d "\n" du -sh  > $DU   
echo "Disk summary completed and sorted."   
if [ -f $DU ]; then
		exit 0
else
		exit 1
fi
