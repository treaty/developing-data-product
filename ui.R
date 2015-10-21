library(shiny)
shinyUI(fluidPage(
  titlePanel("Prediction of MPG of Motor Car"),
  fluidRow(p("This is an algorithm for the prediction of MPG of motor car based on the input values of displacement, weight and number of cylinders of the car. Here, the displacement is in the unit of cubic inch and the desired value is within the range of [50,500]. The weight is in the unit of lb/1000 and the desired value is within the range of [1.5,6]. The number of cylinders is a categorical variable and you need to choose this value as 4 or 6 or 8. Please click the submit button to obtain the prediction result.")
),
sidebarLayout(
  sidebarPanel(
  numericInput('disp','Displacement cu.in.',100,min=50,max=500,step=1),
  numericInput('wt','Weight lb/1000',3.0, min=1.5,max=6.0,step=0.1),
  checkboxGroupInput('cyl','Number of cylinders', c("4"="4","6"="6","8"="8" )), 
  submitButton('Submit')
  ),
  mainPanel(
  h3('Results of prediction'), 
  h4('Displacement input value'),
  verbatimTextOutput("inpdisp"),
  h4('Weight input value'),
  verbatimTextOutput("inpwt"),
  h4('Number of cylinders input value'),
  verbatimTextOutput("inpcyl"),
  h4('Prediction value of MPG'),
  verbatimTextOutput("outpred")
 )  
 ))) 
