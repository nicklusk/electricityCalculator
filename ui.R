library(shiny)

# Define UI for sliders
shinyUI(fluidPage(
  
  #  Application title
  titlePanel("Capacitor Charge & Energy Calculator"),
  
  sidebarLayout(
    sidebarPanel(

    sliderInput("V", "Voltage (V):",
                min = 0, max = 150, value = 20, step= 1),
    

    sliderInput("C", "Capacitance (F):",
                min = 0, max = 150, value = 10, step= 1),

    
    sliderInput("O", "Load Resistance (Ohms):",
                min = 0, max = 150, value = 3, step= 1)
  ),
  
  # Show a table summarizing the values entered and a barplot
  mainPanel(
    tableOutput("values"),
    plotOutput(outputId = "dataset", width = "100%")
  )
)))
