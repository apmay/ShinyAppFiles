shinyUI(pageWithSidebar(
  headerPanel("Fuel Economy Estimator"),
  
  sidebarPanel(
    sliderInput('wt', 'Car Weight (1000lb)', value = 3, min = 1.5, max = 5.5, step = 0.2),
    sliderInput('qsec', 'Quarter Mile Time (sec)', value = 18, min = 14, max = 23, step = 0.5),
    radioButtons('am', 'Transmission', c("Automatic (0)" = 0, "Manual (1)" = 1)),
    submitButton('Submit')
  ),
  mainPanel(
    h3('Prediction Inputs'),
    h4('Car weight'),
    verbatimTextOutput("inputwt"),
    h4('Quarter mile time'),
    verbatimTextOutput("inputqsec"),
    h4('Transmission'),
    verbatimTextOutput("inputam"),
    h3('Prediction Outputs'),
    h4('Predicted miles per gallon'),
    verbatimTextOutput("prediction")
  )
 )
)