# Function to clear console
cat("\014")
# Learn R version
getRversion()
# Clearing all plots
graphics.off()
# To empty an environment
rm(list = ls())
# Prints version information about R, OS and attached packages
sessionInfo(package = NULL)

# q2
grades1 <- scan("grd1.txt", numeric(), quote=" ")
grades2 <- scan("grd2.txt", numeric(), quote=" ")
difference <- grades1 - grades2

indicesBelowZero <- difference < 0
difference[indicesBelowZero]

# q3
newMatrix <- cbind(grades1, grades2, difference)

# q4
myTeam <- scan("myTeam.txt", numeric(), quote = " ")
opponentTeams <- scan("opponentTeams.txt", numeric(), quote = " ")
scoreDiff <- myTeam - opponentTeams

win <- scoreDiff > 0
tie <- scoreDiff == 0
loss <- scoreDiff < 0

totalScore <- sum(win) * 3 + sum(tie)
paste("Total score is", totalScore)
