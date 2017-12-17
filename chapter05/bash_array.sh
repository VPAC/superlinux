#!/bin/bash
# An example of an array in bash
declare -a ashley=(ashley00.edward.unimelb.edu.au ashley01.edward.unimelb.edu.au ashley02.edward.unimelb.edu.au 
ashley03.edward.unimelb.edu.au ashley04.edward.unimelb.edu.au); 
echo ${ashley[1]}
echo ${ashley[@]}
echo ${ashley[4]}
echo ${ashley[@]:1:2}
echo ${ashley[1]:0:8}

ashley=("${ashley[@]}" "ashley05.edward.unimelb.edu.au" "ashley06.edward.unimelb.edu.au")
echo ${ashley[@]}
echo ${ashley[6]}

unset ashley[6]
echo ${ashley[6]}

