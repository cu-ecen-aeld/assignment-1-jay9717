#!/bin/bash
if [ -d "$1" ]
then 
     if [ "$#" -lt 2 ]
     then
          echo " any of the parameteter is not specified"
          exit 1
     fi     
else
     echo "not a directory on system"
     exit 1
fi

#number or files in directory $1 and print count
count=$(find "$1" -type f | wc -l)
#echo "The number of files are $count" 
count_string=$(grep  -r "$2" "$1" | wc -l)
echo "The number of files are $count and the number of matching lines are $count_string" 
     
     


     







