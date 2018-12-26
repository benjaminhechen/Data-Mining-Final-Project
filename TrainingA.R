library(e1071)

trainingA <- read.csv(file="D:\\drive\\JUNIOR\\CSC240\\CSC240 Course Project\\Test\\SendHelp\\SetA.csv", header=TRUE, sep=",")
trainingA

modelA <- naiveBayes(ColorID ~ ., data = trainingA)
modelA

as.data.frame(trainingA)[183,]

predict(modelA, as.data.frame(trainingA)[183,], type="raw")


