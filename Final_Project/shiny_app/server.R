
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
attach(faithful)

fit.lm <- lm(eruptions ~ waiting)

shinyServer(function(input, output) {
    
    output$pred <- renderPrint ({
        
        # build sequence
        rng <- seq(from=60, to=input$time, by=c(5))
        
        # generate data frame to suply to predict function
        newdata <- data.frame(waiting=rng)
        
        # generate predictions
        g <- predict(fit.lm, newdata, interval="predict")
        
        # print predictions
        g
        
    })
})
