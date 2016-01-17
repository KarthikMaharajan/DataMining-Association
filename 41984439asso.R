myTitanic <- function(){
  myData <-read.csv(file="/Users/KarthikMaharajan/Documents/Fall 2015/Introduction to Data Mining/Project 2/Indiviudal Project II_datasets/titanic.csv", header=TRUE, sep=",")
  str(myData)
  library(caret)
  library(arules)
  set.seed(4139)
  #Printing all of the rules
  rules <- apriori(myData)
  inspect(rules)
  #Rules which meet the given support and confidence criteria
  betterRules <- apriori(myData, parameter = list(supp = 0.01, conf = 0.9),appearance = list(rhs=c("Survived=No", "Survived=Yes"), default="lhs"),control = list(verbose=F)) 
  inspect(betterRules)
  #finding redundant rules
  subsetred <- is.subset(betterRules,betterRules)
  subsetred[lower.tri(subsetred, diag=T)] <- NA
  redundant <- colSums(subsetred, na.rm=T) >= 1
  #Removing redundant rules
  uniqueBetterRules <- betterRules[!redundant]
  inspect(uniqueBetterRules)
  #Sorting based on lift
  sortedUniqueBetterRules <- sort(uniqueBetterRules, by = "lift") 
  inspect(sortedUniqueBetterRules)
}

myRetail <- function(){
  myData <-read.csv(file="/Users/KarthikMaharajan/Documents/Fall 2015/Introduction to Data Mining/Project 2/Indiviudal Project II_datasets/retail.csv", header=TRUE, sep=",")
  str(myData)
  library(caret)
  library(arules)
  set.seed(4139)
  #Printing all of the rules
  myData$TransactionNo<-NULL
  myData <- sapply(myData,as.logical)
  rules1 <- apriori(myData)
  inspect(rules1)
  #Rules which meet the given support and confidence criteria
  betterRules1 <- apriori(myData, parameter = list(supp = 0.01, conf = 0.9),appearance = list(rhs=c("Beverage","Meat","PersonalCare"), default="lhs"))
  inspect(betterRules1)
  #finding redundant rules
  subsetred1 <- is.subset(betterRules1,betterRules1)
  subsetred1[lower.tri(subsetred1, diag=T)] <- NA
  redundant1 <- colSums(subsetred1, na.rm=T) >= 1
  #Removing redundant rules
  uniqueBetterRules1 <- betterRules1[!redundant1]
  inspect(uniqueBetterRules1)
  #Sorting based on lift
  sortedUniqueBetterRules1 <- sort(uniqueBetterRules1, by = "lift") 
  inspect(sortedUniqueBetterRules1)
}

myGOT <- function(){
  myData <-read.arff("/Users/KarthikMaharajan/Documents/Fall 2015/Introduction to Data Mining/Project 2/Indiviudal Project II_datasets/game_of_thrones.arff")
  str(myData)
  library(RWeka)
  library(caret)
  library(arules)
  set.seed(4139)
  #Printing all of the rules
  myData$Name<-NULL
  head(myData)
  rules1 <- apriori(myData)
  inspect(rules1)
  #Rules which meet the given support and confidence criteria
  betterRules1 <- apriori(myData, parameter = list(supp = 0.01, conf = 0.9),appearance = list(rhs=c("Survives=1","Survives=0"), default="lhs"))
  inspect(betterRules1)
  #finding redundant rules
  subsetred1 <- is.subset(betterRules1,betterRules1)
  subsetred1[lower.tri(subsetred1, diag=T)] <- NA
  redundant1 <- colSums(subsetred1, na.rm=T) >= 1
  #Removing redundant rules
  uniqueBetterRules1 <- betterRules1[!redundant1]
  inspect(uniqueBetterRules1)
  #Sorting based on lift
  sortedUniqueBetterRules1 <- sort(uniqueBetterRules1, by = "lift") 
  inspect(sortedUniqueBetterRules1)
}
