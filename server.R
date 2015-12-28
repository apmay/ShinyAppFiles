fe.est <- function(wt,qsec,am) {
  -3.1855*wt + 1.5998*qsec + 4.2995*as.numeric(am)
}

shinyServer(
  function(input, output) {
    output$inputwt <- renderPrint({input$wt})
    output$inputqsec <- renderPrint({input$qsec})
    output$inputam <- renderPrint({input$am})
    output$prediction <- renderPrint({fe.est(input$wt, input$qsec, input$am)})
  }
)