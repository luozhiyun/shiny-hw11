library(shiny)

# Define UI for Plot
shinyUI(fluidPage(
  
  # Application title
  titlePanel("iris散点图数据行数"),
  
  # Sidebar with controls to select the variable to plot against
  sidebarLayout(
    sidebarPanel(
      # Simple integer interval
      sliderInput("integer", "Integer:",
                  min=0, max=150, value=50)
    ),
    
	 # Show the caption and plot of the requested variable against
	 # mpg
    mainPanel(
      h3(textOutput("caption")),
      
      plotOutput("irisPlot")
    )
  )
))
