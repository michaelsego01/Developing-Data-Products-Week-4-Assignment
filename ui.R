library(shiny)
library()
data("ChickWeight")

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("Developing Data Products:Week 4 Assignment"),
  
  # Sidebar with a slider input for number of clusters 
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
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("ChickWeightPlot")
    )
  )
)