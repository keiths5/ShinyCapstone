#--------------------------------------------------
# R UI Code for the Capstone Project Shiny App
#--------------------------------------------------

suppressWarnings(library(shiny))

shinyUI(fluidPage(
        
        # Application title
        titlePanel("Predict Next Word"),
        
        fluidRow(HTML("<strong>Author: smithk165</strong>") ),
        fluidRow(HTML("<strong>Date: August-2015</strong>") ),
        
        fluidRow(
                br(),
                p("This Shiny application uses N-Gram Back Off model to predict next word in the user entered words sequence.")),
        br(),
        br(),
        
        fluidRow(HTML("<strong>Enter a single or series of words. Press \"Predict Next Word\" button to predict the next word</strong>") ),
        fluidRow( p("\n") ),
        
        # Sidebar layout
        sidebarLayout(
                
                sidebarPanel(
                        textInput("inputString", "Enter a series of words here",value = ""),
                        submitButton("Predict Next Word")
                ),
                
                mainPanel(
                        h4("Predicted Next Word"),
                        verbatimTextOutput("prediction"),
                        textOutput('text1'),
                        textOutput('text2')
                )
        )
))