library(shiny)
library(rsconnect)
data("ChickWeight")


function(input, output) {
  
  output$ChickWeightPlot <- renderPlot({
    
    Weight_clusters    <- kmeans(ChickWeight[,c(input$x_var,
                                                input$y_var)],centers = input$clusters)
    
    
    
    plot(ChickWeight[,c(input$x_var, input$y_var)], col= Weight_clusters$clusters,
         main = "K-Means Clustering of Weight on ChickWeight Dataset")
    points(Weight_clusters$centers, col= 1:input$clusters, pch=18, cex=3)
  })
}
