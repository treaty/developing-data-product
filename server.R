library(shiny)
get<- function(xx,yy,zz){
model<- lm(mpg~disp+wt+cyl,mtcars)
new <- data.frame(xx,yy,zz)
colnames(new)<- c("disp", "wt","cyl")
out<- predict(model,new)
out[[1]]
}


shinyServer(
 function(input,output){
 output$inpdisp <- renderPrint({input$disp})
 output$inpwt <- renderPrint({input$wt}) 
 output$inpcyl <- renderPrint({input$cyl}) 
 output$outpred <- renderPrint({get(input$disp,input$wt,as.numeric(input$cyl)) })        
 }
)

