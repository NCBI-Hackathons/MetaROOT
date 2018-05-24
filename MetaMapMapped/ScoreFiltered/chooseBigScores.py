#This script interprets a .tsv (tab separated file) that has the score in column 4
#Looks at rows with duplicate input lines (column 1) and returns only the 'winning' row (biggest score)

#workingDir="/work/other_git_repos/metametamap/MetaMapMapped"
#workingDir="/Users/leblanckh/gitProjects/metametamap/MetaMapMapped/"
inputFilePath="/Users/leblanckh/gitProjects/metametamap/MetaMapMapped/ScoreFiltered/round3DupFile.tsv"
outputFilePath="/Users/leblanckh/gitProjects/metametamap/MetaMapMapped/ScoreFiltered/round3_score_lines.tsv"

inputFile=open(inputFilePath,"r")
outputFile=open(outputFilePath,"w")

#constants
diseaseAttributeIdx = 0
scoreIdx = 2

#initial conditions
currentWinningLine = ""
currentWinningScore = -99
string2match=""

for line in inputFile:
    fields=line.split("\t")

    #who knows if the split works... no clue if \t will be recognized
    if currentWinningLine == "":
        currentWinningLine = line
        currentWinningScore = float(fields[scoreIdx])
        string2match = fields[diseaseAttributeIdx]
    elif string2match == fields[diseaseAttributeIdx]:
        #we matched see if winner needs updating
        tmpFloat = float(fields[scoreIdx])
        if tmpFloat > currentWinningScore:
            #we need to update
            currentWinningLine = line
            currentWinningScore = float(fields[scoreIdx])
    else:
        #we aren't on a new line and we aren't matching print winner and set starting new line
        outputFile.write(currentWinningLine)
        currentWinningLine = line
        currentWinningScore = float(fields[scoreIdx])
        string2match = fields[diseaseAttributeIdx]

print("File finished.  Check output file.")
