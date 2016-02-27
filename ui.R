
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("EPIC"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      textInput("text1", label = h3("Input U")),
      textInput("text2", label = h3("Input P")),
      submitButton("Submit")
    ),

    # Show a plot of the generated distribution
    mainPanel(
      fluidRow(column(6, 
        verbatimTextOutput("text1"),
        verbatimTextOutput("text2"),
        verbatimTextOutput("rezult")
      ))
    )
  )
))
