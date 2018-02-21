library(shiny)
library(ggplot2)
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_4850/datasets/movies.Rdata"))

shinyServer(function(input, output) {

      # Create the scatterplot object the plotOutput function is expecting
    output$scatterplot <- renderPlot({
      ggplot(data = movies, aes_string(x = input$x, y = input$y,
                                       color = input$z)) +
        geom_point()
    })
  

})
