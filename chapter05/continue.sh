#!/bin/bash 
LIMIT=19  # Upper limit 
echo 
echo "Printing Numbers 1 through 20 (but not 3 and 11)." 
count=0 
while [ "$count" -le "$LIMIT" ] 
do 
 count=$(($count+1)) 

 if [ "$count" -eq 3 ] || [ "$count" -eq 11 ]  # Excludes 3 and 11. 
 then 
   continue      # Skip rest of this particular loop iteration. 
 fi 
 echo -n "$count "   # This will not execute for 3 and 11. 
done 
echo;
exit 0
