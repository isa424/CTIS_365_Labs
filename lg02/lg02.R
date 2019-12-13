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

# q1
employeeIds <- c(111, 222, 333, 444, 555, 666, 777, 888, 999, 112, 113, 114, 115, 116,
  117, 118, 119, 120, 121, 123, 124, 125, 126)
employeeNames <- c("Rick", "Dan", "Michelle", "Aaron", "Frank", "Abbey", "Edward",
  "Abel", "Reuben", "Abelson", "Abrams", "Ace", "Jane", "Mary", "James", "Bertie",
  "Rachel", "Ross", "Monica", "Chandler", "Phoebe", "Joseph", "Janice")
employeeSalaries <- c(623.3, 515.2, 611.0, 729.0, 843.0, 850.0, 954.0, 1145.0, 741.0,
  600.0, 451.0, 620.0, 750.0, 460.0, 1621.0, 1400.0, 541.0, 856.0, 974.0, 687.0, 574.0,
  641.0, 1245.0)
employeesYearsWorking <- c(15, 14, 8, 15, 4, 14, 19, 12, 2, 5, 1, 16, 7, 4, 20, 14, 5,
  18, 19, 6, 13, 4, 12)

newSalaries <- employeeSalaries
indices <- employeesYearsWorking > 15
newSalaries[indices] <- employeeSalaries[indices] * 1.075

data <- data.frame(employeeIds, employeeNames, employeeSalaries, employeesYearsWorking,
  newSalaries)
names(data) <- c("ID", "Name", "Salary", "Years Working", "New Salary")

head(data)
str(data)

data$ID <- as.factor(data$ID)
str(data)

raises <- data$`New Salary` - data$Salary
maxRaise <- max(raises)
maxindex <- match(maxRaise, raises)
maxRaiseName <- as.character(data$Name[maxindex])
print(paste("The highest raise to the", maxRaiseName, "was made as", maxRaise, "$"))

# q2
mySleepData <- read.delim("mydata.txt", sep = "\t")
head(mySleepData)

colSums(is.na(mySleepData))
apply(is.na(mySleepData), 2, sum)
sapply(mySleepData, function(x) sum(is.na(x)))

sum(colSums(is.na(mySleepData)))

is.na(mySleepData)

mySleepData <- na.omit(mySleepData)

# q3
academics <- read.csv("academic.csv")
academics.list <- as.list(academics)
academics.list

# q4
temps <- read.csv("temperature.csv")
temps.list <- as.list(temps)

maxTemps <- lapply(temps.list, max)
minTemps <- lapply(temps.list, min)

# q5
plot(1:length(temps$Ankara), temps$Ankara, type = "o", col = "blue",
  xlab = "Wees", ylab = "Temperatures", main="Temperature of Ankara for One Week")
