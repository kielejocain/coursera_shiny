library(shiny)

irisSpecies <- function(len, wid) {
      spec <- "Iris Virginica"
      if (len < 2.45) {
            spec <- "Iris Setosa"
      }
      else if (wid < 1.75) {
            spec <- "Iris Versicolor"
      }
      return(spec)
}

shinyServer(
      function(input, output) {
            output$osLen <- renderText({paste("Sepal length =", input$sLen)})
            output$osWid <- renderText({paste("Sepal length =", input$sWid)})
            output$opLen <- renderText({paste("Sepal length =", input$pLen)})
            output$opWid <- renderText({paste("Sepal length =", input$pWid)})
            output$spec <- renderText({irisSpecies(input$pLen, input$pWid)})
      }
)