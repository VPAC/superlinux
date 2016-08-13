#!/bin/bash
LIMIT=19  # Upper limit 
echo 
echo "Printing Numbers 1 through 20 (but breaks loop at 3)." 

a=0

while [ "$a" -le "$LIMIT" ]
do
 a=$(($a+1))

 if [ "$a" -gt 2 ]
 then
   break  # Skip entire rest of loop.
 fi

 echo -n "$a "
done

echo; echo; echo

exit 0

