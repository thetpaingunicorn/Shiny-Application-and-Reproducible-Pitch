library(shiny) 

Average_Factor<-function(Listening,Speaking,Writing,Reading) {(Listening + Speaking + Writing + Reading)/4
  Average_value<-(Listening+Speaking+Writing+Reading)/4
  
  ifelse(Average_value<5 ,"Not_Consider_in_my_test", 
  ifelse(Average_value>=5 & Average_value<5.5,"5", 
  ifelse(Average_value>=5.5 & Average_value<6, "6",
  ifelse(Average_value>=6 & Average_value<6.5, "6",
  ifelse(Average_value>=6.5 & Average_value<7, "7",
  ifelse(Average_value>=7 & Average_value<7.5, "7",
  ifelse(Average_value>=7.5 & Average_value<8,"8",
  ifelse(Average_value>=8 & Average_value<8.5,"8",
  ifelse(Average_value>=8.5 & Average_value<9,"9",
  ifelse(Average_value>=9 & Average_value<9.5,"9",
  ifelse(Average_value>=9.5 & Average_value<10,"9")))))))))))
  
  }

diagnostic_f<-function(Listening,Speaking,Writing,Reading){
  Average_value<-(Listening+Speaking+Writing+Reading)/4
  
  ifelse(Average_value<5 ,"Not_Consider_in_my_test", 
  ifelse(Average_value>=5 & Average_value<5.5,"Modest User", 
  ifelse(Average_value>=5.5 & Average_value<6, "Competenent_User",
  ifelse(Average_value>=6 & Average_value<6.5, "Competenent_User",
  ifelse(Average_value>=6.5 & Average_value<7, "Good_User",
  ifelse(Average_value>=7 & Average_value<7.5, "Good_User",
  ifelse(Average_value>=7.5 & Average_value<8,"Very_Good_User",
  ifelse(Average_value>=8 & Average_value<8.5,"Very_Good_User",
  ifelse(Average_value>=8.5 & Average_value<9,"Expert User",
  ifelse(Average_value>=9 & Average_value<9.5,"Expert User",
  ifelse(Average_value>=9.5 & Average_value<10,"Expert User")))))))))))
  
}

shinyServer(
  function(input, output) {
    output$inputlisteningmark <- renderPrint({input$Listening})
    output$inputspeakingmark <- renderPrint({input$Speaking})
    output$inputwritingmark <- renderPrint({input$Writing})
    output$inputreadingmark <- renderPrint({input$Reading})
    
    output$estimation <- renderPrint({Average_Factor(input$Listening,input$Speaking,input$Writing,input$Reading)})
    output$diagnostic <- renderPrint({diagnostic_f(input$Listening,input$Speaking,input$Writing,input$Reading)})
    
  
  } 
)