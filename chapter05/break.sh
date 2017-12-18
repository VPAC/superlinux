#!/bin/bash
LIMIT=19  # Upper limit 

echo "Printing Numbers 1 through 20 (but breaks loop at 3)." 

count=0

while [ "$count" -le "$LIMIT" ]
do
 count=$(($count+1))

 if [ "$count" -gt 2 ]
 then
   break  # Skip entire rest of loop.
 fi

 echo -n "$count "
done

echo;

exit 0

