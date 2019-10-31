#### Logistic regression  ###

glm.fit = glm(Survived~ Pclass  + Age + SibSp + Parch+SibSp*Parch, data = titanic)
glm.fit
summary(glm.fit)

test = read.csv(file = "test.csv")
prediction = predict.glm(glm.fit, newdata = test, type = "response")
predictions = prediction
for(i in 1:length(prediction))
{
  if(is.na(prediction[i]) || prediction[i]> 0.5)
  {
    predictions[i] = 1 
  }
  else
  {
    predictions[i] = 0
  }
}
head(test)
tail(test)
