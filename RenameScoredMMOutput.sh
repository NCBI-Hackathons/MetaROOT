#!/bin/sh

pushd /panfs/pan1.be-md.ncbi.nlm.nih.gov/product_manager_research_projects/kim_lb/MetaROOT/MetaMapOutputTxtFiles
file_list=$(ls | grep -v "BASIC.txt" | grep -v "DISO.txt")
for f in *.txt; do printf '%s\n' "${f%.txt}_SCORE.txt"; done
echo "$file_list"
popd


