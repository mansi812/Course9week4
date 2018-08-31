
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Predict the flower species from flower measurements"),
  h5("This application depicts the flower species based on inputs Sepal Length and Sepal Width.Select the input values from slider."),
  
 
  sidebarLayout(
    sidebarPanel(
       sliderInput("slidersepal","Select the value of Sepal.length",min=4.3,max=7.9,value=4.3),
       sliderInput("slidersepalwidth","Select the value of Sepal.width",min=2,max=4.4,value=2),
    
      checkboxInput("Show Flower Specie","Show/Hide the results",value=TRUE),
      h3("Reading the predicted outputs:
         1=setosa,
         2=versicolor,
         3=virginica")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h3("Predicted Specie based on the input measurements:"),
      textOutput("predictedspecie")
    )
  )
))
