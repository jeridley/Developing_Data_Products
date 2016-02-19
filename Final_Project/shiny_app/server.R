
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
attach(faithful)

fit.lm <- lm(eruptions ~ waiting)

shinyServer(function(input, output) {
    
    output$lower <- renderText ({
        newdata <- data.frame(waiting=input$time)
        g <- predict(fit.lm, newdata, interval="predict")
        paste("Lower: ", signif(g[2], 6), " minutes.")
    })
    
    output$upper <- renderText ({
        newdata <- data.frame(waiting=input$time)
        g <- predict(fit.lm, newdata, interval="predict")
        paste("Upper: ", signif(g[3], 6), " minutes.")
    })
    
    
})
