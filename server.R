library(shiny)

# Define server logic
shinyServer(function(input, output) {
  
  # Reactive expression to compose a data frame containing all of the values
  sliderValues <- reactive({

    # Compose data frame
    data.frame(
      Name = c("Voltage (V)",
               "Capacitance (F)",
               "Load Resistance (Ohm)",
               "Charge (cC = centicoulomb)",
               "Energy (cJ = centijoules)",
               "Time Constant (s = seconds)"),
      Value = c(input$V,
                input$C,
                input$O,
                (input$C*input$V)*10^-2,
                (input$V^2*input$C/2)*10^-2,
                input$O*input$C),
      Symbol = c("V",
                "F",
                "Ohm",
                "cC",
                "cJ",
                "s"))
  })
  
  # Show the values using an HTML table
  output$values <- renderTable({
    sliderValues()
  })
  # Show the values using a bar plot
  output$dataset <- renderPlot({
    d <- sliderValues()
    barplot(height=d[,2],names.arg=d[,3])
  })
  
})