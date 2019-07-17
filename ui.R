library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("IELTS Overall Bandscore Calculation and Interpretation"),
    
    sidebarPanel(
      numericInput('Listening', 'Insert your Listening Score', 4,min = 1, max = 9, step = 0.5) ,
      numericInput('Speaking', 'Insert your Speaking Score', 4, min = 0, max = 9, step = 0.5),
      numericInput('Reading', 'Insert your Reading Score', 4, min = 0, max = 9, step = 0.5),
      numericInput('Writing', 'Insert your Writing Score', 4,min = 0, max = 9, step = 0.5)
    ), 
    
    mainPanel(
      p('IELTS, the International English Language Testing System, is designed to assess the language ability of candidates who need to study or work where English is used as the language of communication. IELTS is required for entry to university in the UK and other countries.'),
      p('IELTS is recognised by universities and employers in many countries, including Australia, Canada, Ireland, New Zealand, the UK and the USA. It is also recognised by professional bodies, immigration authorities and other government agencies. 
More than 2 million people a year take the test.'),
      p('The outcome of the Overall Bandscore was interpreted as follows:'),
      p('Note: Overall Bandscore 1 to 4 are not consider in this.'),
      
      h4('Enter Score:'), 
      p('Listening:'), verbatimTextOutput("inputlisteningmark"),
      p('Speaking:'), verbatimTextOutput("inputspeakingmark"),
      
      p('Writing:'), verbatimTextOutput("inputwritingmark"),
      
      
      p('Reading:'), verbatimTextOutput("inputreadingmark"),
      
      h4('Your calulated Overall Bandscore is:'),
      verbatimTextOutput("estimation"),
      p('It means that you are:'),
      verbatimTextOutput("diagnostic")
      
    )
    
    
  )   
)