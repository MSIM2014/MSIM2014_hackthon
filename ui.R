library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Reactivity"),
  
  # Sidebar with controls to provide a caption, select a destination
  sidebarLayout(
    sidebarPanel(
      selectInput("dest", "Choose a destination:", 
                  choices = c("SEA", "SJC", "SFO"))
    ),
    
    # Show the plot 
    mainPanel( 
      plotOutput("view")
    )
  )
))