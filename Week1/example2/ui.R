library(shiny)

shinyUI(pageWithSidebar(
    
    headerPanel("Illumstrating markup"),
    
    sidebarPanel(
        h1('Sidebar panel'),
        h2('H2 text'),
        h3('H3 text'),
        h4('H4 text')
    ),
    
    mainPanel(
        h3('Main Panel text'),
        code('some code'),
        p('some ordinary text')
    )
))