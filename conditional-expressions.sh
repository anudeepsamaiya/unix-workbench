#!/usr/bin/env bash
# File: repseq.sh

echo "Start program"

if [[ $1 -eq $2 ]]
then
  echo "Yes"
else
    echo "NO"
fi

echo "End program"

# odd=$(echo "$1 % 2" | bc)
#
# if [[ $odd -eq 0 ]]
# then
#   status="even"
# else
#   status="odd"
# fi
#
# if [[ $1 -gt 0 ]] && [[ $1 -lt 10 ]]
# then
#   location="in"
# else
#   location="out of"
# fi
#
# echo "This number is $status and $location range."

# sequence=$(eval echo {$1..$2})
# echo $sequence
#
# for i in $sequence
# do
#   compute=$(echo "$i % $3" | bc)
#   echo $compute
#   result="$result $compute"
# done
#
# echo "result"
# echo $result


