setwd("D:/Tugas Besar/Data Mining")
getwd()
install.packages("C50")
install.packages("printr")
library(C50)
library(printr)
dataset <- read.csv("log2.csv", sep = ",")
dataset$Action<-as.factor(dataset$Action)
class(dataset$Action)
model <- C5.0(Action ~., data=dataset)
summary(model)
plot(model)
datatesting <- dataset[,1:4]
predictions <- predict(model, dataset)
table(predictions, dataset$Action)


