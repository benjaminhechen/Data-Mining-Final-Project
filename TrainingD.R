
trainingD <- read.csv(file="D:\\drive\\JUNIOR\\CSC240\\CSC240 Course Project\\Test\\SendHelp\\SetD.csv", header=TRUE, sep=",")
trainingD

priceModel.fit <- lm(Price ~ factor(Rarity) + factor(ColorID) + CMC + factor(SuperType), data = trainingD)
summary(priceModel.fit)

predict(priceModel.fit, data.frame(Rarity=c(4), ColorID=c(6), CMC=7, SuperType=c(5)))
