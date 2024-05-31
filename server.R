library(shiny)
data("ChickWeight")

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  output$ChickWeightPlot <- renderPlot({
    # generate bins based on input$bins from ui.R
    Weight_clusters    <- kmeans(ChickWeight[,c(input$x_var,
                                                input$y_var)],centers = input$clusters)
    
    
    # draw the histogram with the specified number of bins
    plot(ChickWeight[,c(input$x_var, input$y_var)], col= Weight_clusters$clusters,
         main = "K-Means Clustering of Weight on ChickWeight Dataset")
    points(Weight_clusters$centers, col= 1:input$clusters, pch=18, cex=3)
  })
}
