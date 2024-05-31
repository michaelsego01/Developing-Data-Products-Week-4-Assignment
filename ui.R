library(shiny)
library(rsconnect)
data("ChickWeight")


fluidPage(
  

  titlePanel("Developing Data Products:Week 4 Assignment"),
  
  
  sidebarLayout(
    sidebarPanel(
      selectInput("x_var", "X Variable:", choices=names(ChickWeight)[4]),
      selectInput("y_var", "Y Variable:", choices=names(ChickWeight)[1]),
      sliderInput("clusters",
                  "Number of clusters:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),
    
    
    mainPanel(
      plotOutput("ChickWeightPlot")
    )
  )
)