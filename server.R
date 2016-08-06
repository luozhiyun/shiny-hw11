library(shiny)
library(datasets)

# homework 10 application
# 根据输入的数字r，展示iris数据的前r行数据，并画出这r行数据的散点图矩阵
irisData <- iris

shinyServer(function(input, output) {
  
  # Compute the forumla text in a reactive expression since it is
  # shared by the output$caption and output$irisPlot functions
  formulaText <- reactive({
    paste(input$integer,"行iris数据散点图矩阵")
  })
   
  # Return the formula text for printing as a caption
  output$caption <- renderText({
    formulaText()
  })
  

  # Generate a plot
  # only include select data
  output$irisPlot <- renderPlot({
    plot(irisData[1:input$integer,])
  })
})
