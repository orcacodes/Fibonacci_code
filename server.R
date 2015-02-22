library(UsingR)

phi <<- (1+sqrt(5))/2
psi <<- (1-sqrt(5))/2
fibonacci <- function(n) ((phi^n)-(psi^n))/sqrt(5)

shinyServer(
      function(input, output) {
            output$inputValue <- renderPrint({input$n})
            output$outputValue <- renderPrint({fibonacci(input$n)})            
      }
)