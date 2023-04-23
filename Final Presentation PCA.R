# Example of PCA in R Using the Iris Dataset

#Install requisite packages if you haven't already done so

#Load libraries
library(stats)
library(dplyr)

#Iris Data
data("iris")

#Convert Iris data into unlabeled data (Removes last column)
idata <- iris %>% select(1,2,3,4)

#Check PCA eligibility
cor(idata)
mean(cor(idata))
PCA <- princomp(idata)

#Evaluate PCA

#PC Loading
PCA$loadings

#Principal Components
PC <- PCA$scores
cor(PC)
