library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Data Science FTW!"),
    sidebarPanel(
        h3('Sidebar text')
    ),
    mainPanel(
        h3('Main Panel text')
    )
))