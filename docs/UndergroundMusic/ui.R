#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(ggplot2)
library(shiny)


shinyUI(
  navbarPage(
    theme = "cerulean",
    "Underground Music",
           tabPanel("Introduction",
                    h2("Problem Domain"),
                    h2("Research Questions"),
                    h2("Data Analyzed"),
                    h2("Key Findings")),
    
           tabPanel("Genre vs. Top Hits Popularity",
                    h1("Comparing Genre Popularity in Spotify Top Hits"),
                    sidebarPanel(selectInput(inputId = "sel_genre",
                                label = "Select Genre",
                                list("country", "Dance/Electronic", "easy listening",
                                     "hip hop", "hip hop, Dance/Electronic", "hip hop, R&B", "latin", "metal", "pop",
                                     "R&B", "rock", "pop, easy listening, jazz", "rock, classical",
                                     "rock, pop, metal, Dance/Electronic", 
                                     "World/Traditional, Folk/Acoustic"))),
                    mainPanel(plotOutput("plot"))),
    
           tabPanel("Interactive 2"),
    
           tabPanel("Factors of Popularity",
                    h1("Comparing Different Factors of Popularity"),
                    sidebarPanel(checkboxGroupInput(inputId = "sel_factor",
                                                    label = "Select Factor",
                                                    list("popularity", "danceability", "energy", "loudness", "instrumentalness"))),
                    plotOutput("plot1")),
    
           tabPanel("Summary"),
    
           tabPanel("Report")))









