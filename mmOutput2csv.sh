#!/bin/bash

# This is a script to parse specific output files into a simpler format.

working_dir=$(pwd)
echo "working_dir 1 $working_dir"
echo "argv is $#"
if [ $# > 0 ] ; then
  #assume a file directory was passed in
  working_dir=$1
fi

echo "working_dir 2 $working_dir"
for file in $working_dir/*_BASIC.txt ; do
  awk -F"|" '{print $1 "," $3 "," $4 "," $5 "," $6}' $file
done

