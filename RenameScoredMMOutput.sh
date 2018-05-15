#!/bin/sh

#pushd /panfs/pan1.be-md.ncbi.nlm.nih.gov/product_manager_research_projects/kim_lb/MetaROOT/MetaMapOutputTxtFiles
pushd /Users/leblanckh/gitProjects/metametamap/MetaMapOutputTxtFiles
file_list=$(ls | grep -v "BASIC.txt" | grep -v "DISO.txt" | grep -v "SCORE.txt")
echo "$file_list"
for i in $file_list ;
do
  git mv "$i" $( echo $i | sed 's/\.[Tt][Xx][Tt]$/_SCORE.txt/g' ) ;
done
#for f in *.txt; do printf '%s\n' "${f%.txt}_SCORE.txt"; done
popd


