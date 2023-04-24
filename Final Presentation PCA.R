# Example of PCA in R Using the Iris Dataset

#Install requisite packages if you haven't already done so
install.packages("FactoMineR")
install.packages("factoextra")
#Load libraries
library(stats)
library(dplyr)
library(FactoMineR)
library(factoextra)
library(ggplot2)
#Iris Data
data("iris")

#Exploratory Data Analysis

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


