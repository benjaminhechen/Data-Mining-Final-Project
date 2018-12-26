library(e1071)

trainingB <- read.csv(file="D:\\drive\\JUNIOR\\CSC240\\CSC240 Course Project\\Test\\SendHelp\\SetB.csv", header=TRUE, sep=",")
trainingB

modelB <- naiveBayes(ColorID ~ ., data = trainingB)
modelB

as.data.frame(trainingB)[11,]

predict(modelB, as.data.frame(trainingB)[11,], type="raw")


