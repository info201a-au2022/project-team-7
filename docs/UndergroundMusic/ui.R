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
    
#           tabPanel("Popularity vs Danceability",
#                  h1("Comparing Genre Danceability in Poplar and Unpopular Spotify Data "),
#                  sidebarPanel(sliderInput(inputId = "sel_year",
#                                           label = "Select Year",
#                                           min = "1921",
#                                           max = "2020",
#                                           value = "1921")),
#                  plotOutput("plot2")),


           tabPanel("Factors of Popularity",
                    h1("Comparing Different Factors of Popularity"),
                    sidebarPanel(selectInput(inputId = "sel_genre1",
                                                    label = "Select Genre",
                                                    list("country", "Dance/Electronic","hip hop", 
                                                         "hip hop, Dance/Electronic", "hip hop, R&B", "latin", "metal", "pop",
                                                         "R&B", "rock"))), 
                    mainPanel(plotOutput("plot1")),
                    sidebarPanel(selectInput(inputId = "sel_genre2",
                                             label = "Select Genre",
                                             list("country", "Dance/Electronic","hip hop", 
                                                  "hip hop, Dance/Electronic", "hip hop, R&B", "latin", "metal", "pop",
                                                  "R&B", "rock"))),
                   mainPanel(plotOutput("plot3")),
                   sidebarPanel(selectInput(inputId = "sel_genre3",
                                            label = "Select Genre",
                                            list("country", "Dance/Electronic","hip hop", 
                                                 "hip hop, Dance/Electronic", "hip hop, R&B", "latin", "metal", "pop",
                                                 "R&B", "rock"))),
                   mainPanel(plotOutput("plot4")),
                   sidebarPanel(selectInput(inputId = "sel_genre4",
                                             label = "Select Genre",
                                             list("country", "Dance/Electronic","hip hop", 
                                                  "hip hop, Dance/Electronic", "hip hop, R&B", "latin", "metal", "pop",
                                                  "R&B", "rock"))),
                   mainPanel(plotOutput("plot5"))
                   ),
    
           tabPanel("Summary"),
    
           tabPanel("Report",
                    h3("Code Name"),
                    p("Underground"),
                    h3("Project Title"),
                    p("Spotify Data Analysis"),
                    h3("Authors"),
                    p("Maddie Lee and Josie Duong"),
                    h3("Affiliation"),
                    p("INFO-201: Technical Foundations of Informatics - The Information School - University of Washington "),
                    h3("Date"),
                    p("Autumn 2022"),
                    h3("Abstract"),
                    p("Our main question for this project is, 
                      “Does popularity determine good music?”. We wonder what factors influence as song's
                      popularity. Through this project we will explore Spotify data sets that help us 
                      see the correlation between popularity, genre, and other aspects of music. We want
                      to find out what makes a song popular and if popularity is truly an indicator of
                      good music."),
                    h3("Keywords"),
                    p("Taste, exposure, genre, trends"),
                    h3("Introduction"),
                    p("Our project will explore what makes a song popular. We chose Spotify to gather data from, because 
                      we believe it’s  one of the biggest music streaming platforms, which will 
                      give us the most accurate data to work with. We want to find the trends within the 
                      data to determine statistically what makes a quality song, and if there is any relationship
                      at all. Spotify, which began in 2008, is now the world’s leading audio streaming 
                      service, with 433 million users, including 188 million premium subscribers 
                      spread across 183 regions (Ruby, D. 2022). Our project will include large 
                      datasets with thousands of songs within the 2000s, including the most popular 
                      songs as well as less known songs."), 
                    h3("Problem Domain"),
                    p("words")))
)

