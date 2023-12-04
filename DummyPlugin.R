library(AppliedPredictiveModeling)
library(caret)

input <- function(inputfile) {
   myData <<- read.csv(inputfile)
}

run <- function() {}

output <- function(outputfile) {

head(model.matrix(survived ~ ., data = myData))
dummies <- dummyVars(survived ~ ., data = myData)
head(predict(dummies, newdata = myData))

write.csv(head(predict(dummies, newdata = myData)), outputfile)

}
