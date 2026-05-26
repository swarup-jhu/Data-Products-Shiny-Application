library(shiny)

shinyUI(fluidPage(
  titlePanel("Auto-Efficiency Predictor (MPG)"),
  
  sidebarLayout(
    sidebarPanel(
      h4("Adjust Vehicle Stats"),
      helpText("Change the parameters below to see the predicted fuel efficiency."),
      
      # Input: Weight of the car
      sliderInput("wt", "Vehicle Weight (1000 lbs):", 
                  min = 1.5, max = 5.5, value = 3.2, step = 0.1),
      
      # Input: Cylinders
      radioButtons("cyl", "Number of Cylinders:",
                   choices = c("4" = 4, "6" = 6, "8" = 8), selected = 6),
      
      hr(),
      submitButton("Update Prediction")
    ),
    
    mainPanel(
      tabsetPanel(type = "tabs",
                  tabPanel("Analysis", 
                           h3("Predicted Fuel Economy"),
                           div(style="color: #2c3e50;", verbatimTextOutput("mpg_pred")),
                           plotOutput("distPlot")
                  ),
                  tabPanel("Documentation", 
                           h3("Application Overview"),
                           p("This tool predicts a vehicle's Miles Per Gallon (MPG) based on two primary factors: Weight and Engine size (Cylinders)."),
                           h4("Instructions:"),
                           tags$ul(
                             tags$li("Use the slider to set the weight of the car in thousands of pounds."),
                             tags$li("Select the number of engine cylinders using the radio buttons."),
                             tags$li("Click 'Update Prediction' to see the calculated result and where it falls on the trend line.")
                           ),
                           p("The model uses a multivariate linear regression based on the 1974 Motor Trend US magazine dataset.")
                  )
      )
    )
  )
))