library(shiny)
library(ggplot2)

# Global model for MPG prediction
fit <- lm(mpg ~ wt + cyl, data = mtcars)

shinyServer(function(input, output) {
  
  # Reactive calculation for the predicted value
  prediction <- reactive({
    predict(fit, newdata = data.frame(wt = input$wt, 
                                      cyl = as.numeric(input$cyl)))
  })
  
  output$mpg_pred <- renderText({
    paste(round(prediction(), 2), " Miles Per Gallon")
  })
  
  output$distPlot <- renderPlot({
    ggplot(mtcars, aes(x = wt, y = mpg)) +
      geom_point(aes(color = as.factor(cyl)), size = 3) +
      geom_smooth(method = "lm", se = FALSE, color = "black", linetype = "dashed") +
      geom_point(aes(x = input$wt, y = prediction()), color = "red", size = 6, shape = 18) +
      labs(x = "Weight (1000 lbs)", y = "MPG", color = "Cylinders") +
      theme_minimal()
  })
})