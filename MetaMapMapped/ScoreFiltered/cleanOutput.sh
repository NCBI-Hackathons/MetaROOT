#!/bin/bash

#simple script to use sed to clean output
workingDir="/Users/leblanckh/gitProjects/metametamap/MetaMapMapped/"
file2clean="MappedDupes.tsv"
outputFile="ScoreFiltered/round3DupFile.tsv"



pushd $workingDir
#The following command uses 2 sed's to fix the 2 file problems
#The first sed strips out all lines that match on anything<TAB>AA
#The second sed deletes the first part of lines that start with a number followed by a :  
#(e.g. 288:blah blah blah --> blah blah blah)

#sed '/.*	AA/d' $file2clean | sed 's/^[0-9]*:\(.*$\)/\1/' > $outputFile

sed '/.*	AA/d' $file2clean > $outputFile
popd
