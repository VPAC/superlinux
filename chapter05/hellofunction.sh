#!/bin/bash
# Enter two names when invoking script

# Define your function here
# Firstname and Surname are first two parameters.
Hello () {
   echo "Hello World ${1} ${2}"
   return $(bc -l <<< ${#1}+${#2})
}

# Capture value returned by last command
echo The name has this many characters $?

exit
