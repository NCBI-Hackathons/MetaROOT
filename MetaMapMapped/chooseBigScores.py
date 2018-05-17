
#This script interprets a .tsv (tab separated file) that has the score in column 4
#Looks at rows with duplicate input lines (column 1) and returns only the 'winning' row (biggest score)


#workingDir="/work/other_git_repos/metametamap/MetaMapMapped"
inputFilePath="/work/other_git_repos/metametamap/MetaMapMapped/clean2.tsv"
outputFilePath="/work/other_git_repos/metametamap/MetaMapMapped/winning_score_lines.tsv"

print("Make sure input and output file paths exist.")

inputFile=open(inputFilePath,"r")
outputFile=open(outputFilePath,"w")
print("Make sure input and output files opened.")


#initial conditions
currentWinningLine = ""
currentWinningScore = -99
string2match=""

for line in inputFile:
	print(line)
	fields=line.split("\t")

    #who knows if the split works... no clue if \t will be recognized
	print(fields)
	if currentWinningLine == "":
		currentWinningLine = line
		currentWinningScore = fields[3]
		string2match = fields[0]
	elif string2match == fields[0]:
		#we matched see if winner needs updating
		if fields[3] > currentWinningScore:
		#we need to update
		currentWinningLine = line
		currentWinningScore = fields[3]
	else
		#we aren't on a new line and we aren't matching print winner and set starting new line
		outputFile.write(currentWinningLine)
		currentWinningLine = line
		currentWinningScore = fields[3]
		string2match = fields[0]

print("File finished.  Check output file.")
	   
