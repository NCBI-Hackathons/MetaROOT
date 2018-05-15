#!/bin/bash

TAB=$'\t'

sourceDir="/Users/leblanckh/gitProjects/metametamap/MetaMapOutputTxtFiles"
outputDir="/Users/leblanckh/gitProjects/metametamap/MetaMapMapped"

disoFile="${outputDir}/Mapped_DISO.txt"
basicFile="${outputDir}/Mapped_BASIC.txt"
scoreFile="${outputDir}/Mapped_SCORE.txt"

echo "" > $disoFile
echo "" > $basicFile
echo "" > $scoreFile

for file in ${sourceDir}/*DISO.txt ; do
  cat $file | sed s/\.txt// | sed "s/|/$TAB/g" | tee -a $disoFile
done

for file in ${sourceDir}/*BASIC.txt ; do
  cat $file | sed s/\.txt// | sed "s/|/$TAB/g" | tee -a $basicFile
done

for file in ${sourceDir}/*SCORE.txt ; do
  cat $file | sed s/\.txt// | sed "s/|/$TAB/g" | tee -a $scoreFile
done
