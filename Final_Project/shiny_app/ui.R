
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

suppressWarnings(library(shiny))
suppressWarnings(attach(faithful))

shinyUI(fluidPage(

  # Application title
  titlePanel("Predict Old Faithful Geyser Eruption Duration"),

  sidebarLayout(
    sidebarPanel(
        sliderInput("time", "Time in minutes:", min = 60, max = 120, value = 80, step = 5)
    ),

    # print predictions
    mainPanel(
        p("The purpose of this Shiny app is to display prediction of eruption duration times
           based on the waiting time in minutes of the Old Faithful Geyser. The model shows the 
           lower and upper eruption duration bounds based on the waiting time."),
        p("The slider represents the minutes of waiting (from 60 to 120). By moving the slider
          the lower and upper bounds of the eruption duration time are adjusted."),
        p("The algorithm employs simplielinear model of eruption durations vs. waiting times of the",
          strong(span("faithful", style = "color:blue")), "data set available in the base installation of R."),
        p("The linear model is about", strong(span("95%", style="color:red")), "accurate."),
        verbatimTextOutput("pred")
    )
  )
))
