library(e1071)

trainingC <- read.csv(file="D:\\drive\\JUNIOR\\CSC240\\CSC240 Course Project\\Test\\SendHelp\\SetC.csv", header=TRUE, sep=",")
trainingC

modelC <- naiveBayes(ColorID ~ ., data = trainingC)
modelC

as.data.frame(trainingC)[138,]

predict(modelC, as.data.frame(trainingC)[138,], type="raw")


