The purpose of this directory is to format the file into a version that has:
- removed all duplicates except for 1 'winner'
- chosen the 'winner' based on highest score
- score being determined by tab-separated-column 3 (in zero-based idx 2)

There were 2 major errors to overcome:
- I was accidentally telling python to compare strings when I wanted it to compare floats
- The starting input file had too many lines repeated in strange non-sorted ways

The line repeat error is caused by the bash script that generates it using too simple of a grep.
The grep needs to be edited to use anchoring chars.  Both a true anchor of ^ 
and an 'in-line' anchor of \t (aka 	 aka <TAB>).  If you wrap the grep for first column string
in those anchors then you will prevent it from grabbing larger lines that happen to contain the 
smaller sub strings.


