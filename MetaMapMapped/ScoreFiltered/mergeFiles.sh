#!/bin/bash

file1="/Users/leblanckh/gitProjects/metametamap/MetaMapMapped/MappedUniq.tsv"
file2="/Users/leblanckh/gitProjects/metametamap/MetaMapMapped/ScoreFiltered/round3_score_lines.tsv"
outputFile="/Users/leblanckh/gitProjects/metametamap/MetaMapMapped/ScoreFiltered/MergedMap.tsv"

cat $file1 $file2 | sort > $outputFile
