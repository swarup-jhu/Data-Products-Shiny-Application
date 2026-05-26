# Data-Products-Shiny-Application
Coursera-Developing-Data-Products-Project
Final project for the Developing Data Products course on Coursera. This course is part of the Data Science Specialization track offerd by Johns Hopkins University.
In this project a Shiny application is developed and deployed it on Rstudio's servers and deployed in shinyapps.io platform. Second, Slidify is used to prepare a reproducible pitch presentation about the application.


## Files:
1.ui.R (User Interface): This file defines the frontend. It controls the layout, appearance, and where the buttons, sliders, or plots are placed. It’s what the user sees and interacts with.

2.server.R (The Logic): This is the backend. It contains the instructions to transform inputs (like a slider value) into outputs (like a calculated graph). If ui.R says "put a plot here," server.R provides the data and code to actually draw it.

3.Shiny-App-Presentation.rmd: This is an R Markdown file. It’s a plain-text document that mixes regular text with chunks of R code. It is the "source code" for the presentation.

4.Shiny-App-Presentation.html: This is the output. When "Knit" or render the .rmd file, it generates this HTML file. It’s a finished, browser-ready slideshow (often using frameworks like ioslides) for the Presentation at Rpubs [https://rpubs.com/swarup-jhu/Data-Products-Shinyapp-Presentation]

5.Launch the Shiny App at [https://swarup-jhu.shinyapps.io/Coursera-Data-Product-Shiny-App/]
