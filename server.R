library(shiny)

shinyServer(function(input, output) {
        
        output$prediction <- renderText({
                ifelse(input$petal.length < 2.5, "setosa",
                       ifelse(input$petal.width <1.8, "versicolor", "virginica"))
        })
        
})
