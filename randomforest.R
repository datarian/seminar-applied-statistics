set.seed(seed)
wine.rf.caret <- caret::train(qual~.,
                         data=wine.training,
                         method="rf",
                         trace=T,
                         ntree = 600,
                         #tuneGrid = data.frame(mtry = 3),
                         trControl=trainControl(
                             method="cv",
                             number=10,
                             sampling = "up"))
wine.rf.caret
plot(wine.rf.caret$finalModel)
# change in error rate as more trees are added to forest
# green: yes, red: no, black: OOB

wine.rf.predict <- predict(wine.rf.caret, wine.test)

confusionMatrix(wine.rf.predict,wine.test$qual)

CrossTable(x=wine.test$qual, y=wine.rf.predict, prop.chisq = F)

conf.mat.rf <- confusionMatrix(wine.rf.predict,as.factor(wine.test$qual))
accuracy.rf <- conf.mat.rf$overall[1]
accuracy.balanced.rf <- conf.mat.rf$byClass[11]
sensitivity.rf <- conf.mat.rf$byClass[1]
specificity.rf <- conf.mat.rf$byClass[2]
negpredval.rf <- conf.mat.rf$byClass[4]
