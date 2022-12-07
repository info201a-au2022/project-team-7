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
           tabPanel("Overview",
                    h3("Introduction"),
                    p("Our project Underground Music will be using spotify music data from a few datasets to generate different interactive graphs to juxtapose different aspects of the datasets.
                      We'll be comparing catagories such as popularity, danceability, and genre. We want to pull from our datasets to see how objectivlely unpopular music compares to popular songs 
                      as well as what factors make a song popular. We chose Spotify to gather data from, because we believe it’s  one of the biggest music streaming platforms, which will give us the most accurate data to work with."),
                    h3("Research Questions"),
                    h3("Data Analyzed"),
                    h3("Key Findings")),
    
           tabPanel("Genre vs Top Hits Popularity",
                    h1("Comparing Genre Popularity in Spotify Top Hits"),
                    sidebarPanel(selectInput(inputId = "sel_genre",
                                label = "Select Genre",
                                list("country", "Dance/Electronic","hip hop", 
                                     "hip hop, Dance/Electronic", "hip hop, R&B", "latin", "metal", "pop",
                                     "R&B", "rock"))),
                    mainPanel(plotOutput("plot"))),
          tabPanel("Popularity vs Year",
          h1("Comparing Popularity of Songs Based on Year Published"),
                  sidebarPanel(sliderInput(inputId = "sel_year",
                                           label = "Select Year",
                                           min = "1921",
                                           max = "2020",
                                           value = "1921")),
                  plotOutput("plot2")),
   
           tabPanel("Factors of Popularity",
                    h1("Comparing Different Factors of Popularity"),
                    sidebarPanel(selectInput(inputId = "sel_genre1",
                                                    label = "Select Genre",
                                                    list("country", "Dance/Electronic","hip hop", 
                                                         "hip hop, Dance/Electronic", "hip hop, R&B", "latin", "metal", "pop",
                                                         "R&B", "rock"))),
                    mainPanel(plotOutput("plot1"))),
    
           tabPanel("Summary"),
    
           tabPanel("Report"))
)

