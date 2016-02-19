library(shiny)

shinyServer(
    function(input, output) {
        output$id1 <- renderPrint({input$id1})
        output$id2 <- renderPrint({input$id2})
        output$date <- renderPrint({input$date})
    }
)