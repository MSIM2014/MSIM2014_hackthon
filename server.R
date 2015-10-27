library(shiny)
library(ggplot2)
library(nycflights13)
library(dplyr)

# Define server logic required to display number of lights from
# NYC airports to the chosen destination airport
shinyServer(function(input, output) {
  
  # The output$view depends on input$dest, so will be re-executed 
  # whenever input$dest is changed. 
  
  output$view <- renderPlot({
  
    flights.selected = filter(flights, dest == input$dest)
    title.chart = paste("Histogram for flights to", input$dest)
    
    ggplot(data=flights.selected, aes(origin)) + 
      geom_histogram( col="red",
                      fill="green",
                      alpha = .2) + 
      labs(title=title.chart) +
      labs(x="Origin", y="Count")
  })
})