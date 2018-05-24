#!/bin/bash

#check number of args
#if greater than 3 assume only using 1st 3, print the dropped ones and how the 3 kept ones will be used
#if 3 print how they will be used
#if less than 3 print how they will be used and what defaults are being assumed

fileName="$1"

cat $fileName | awk -F"\t" '{print $1}' | sort | uniq -u | while read dupe
do
  grep "^$dupe\t" $fileName
done

