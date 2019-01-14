# Loading all necessary libraries

library(ggplot2)
library(viridis)
library(rpart)
library(rpart.plot)
library(caret)
library(tidyverse)
library(Hmisc)
library(viridis) # good colour palette. scale_color_viridis(), scale_fill_viridis()
library(reshape2)
library(GGally)
library(caret)
library(ggcorrplot)
library(FactoMineR)
library(pca3d)
library(htmltools)
library(rattle)
library(randomForest)
library(gmodels)
library(nnet)
library(NeuralNetTools)
library(data.table)
library(rgl)
library(htmltools)

source("plotdefaults.R") # uniform display of ggplots

source("preprocessing.R")

source("eda.R") # exploratory data analysis

source("regression + neural net.R")

#source("decisiontree.R") -> code moved to results.Rmd to enable caching.

#source("randomforest.R") -> code moved to results.Rmd to enable caching.


