
titanic = read.csv(file = "Titanic.csv")
head(titanic)

#########################  ggplot     ####################### 

library(ggplot2)

ggplot(titanic, aes(x=titanic$SibSp,y=titanic$Fare)) + geom_point() +geom_smooth()

ggplot(titanic) + geom_point( aes(x=titanic$SibSp,y=titanic$Fare))

## pairs

pairs(titanic)

## simple lm

model1 = lm(titanic$Fare~titanic$PassengerId)
model2 = lm(titanic$Fare~titanic$Survived)
model3 = lm(titanic$Fare~titanic$Pclass)
model4 = lm(titanic$Fare~titanic$Age)
model5 = lm(titanic$Fare~titanic$SibSp)
model6 = lm(titanic$Fare~titanic$Parch)

print(model6)

summary(model3)

#### Multiple LM

multiplelm=lm(Fare~SibSp+Parch+Pclass+Age+Survived, data = titanic)

summary(multiplelm)


### correlation

## removing Gender feature as it is not numeric from original dataset
## reading the dataset without gender feature

titanic=read.csv(file = "project.csv")
cor(titanic)





