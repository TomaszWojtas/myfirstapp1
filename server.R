library(UsingR)
data(galton)



prediction <- function(parent, cm=FALSE)
{
        if(cm) {parent <- parent/2.54}
        fit <- lm(child~parent, galton)
        new <- data.frame(parent=parent)
        value <- predict.lm(fit, new, se.fit=FALSE)[[1]]
        if(cm) {value <- value*2.54}
        value
}
prediction(172, TRUE)



shinyServer(
        function(input, output) {
                
                output$output <- renderPrint({prediction(input$input, input$cm)})
        }
)

