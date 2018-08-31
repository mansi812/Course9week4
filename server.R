#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  library(randomForest)
  model1<-randomForest(Species~ Sepal.Length+Sepal.Width,data=iris)
  model1pred<-reactive({
    sepal<-input$slidersepal
    sepalwidth<-input$slidersepalwidth
    predict(model1,newdata=cbind(data.frame("Sepal.Length"=sepal,"Sepal.Width"=sepalwidth)))
  })
  output$predictedspecie<-renderText({
    model1pred()
  })
  })
  

