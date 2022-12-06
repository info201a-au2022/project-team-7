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
<<<<<<< HEAD
=======

>>>>>>> bd3bc1acbbfb31289a9df273a2742e5c16cd49be

shinyUI(
  navbarPage(
    theme = "cerulean",
    "Underground Music",
           tabPanel("Overview",
                    h3("Introduction"),
                    p("Our project Underground Music will generate an underground music artist based off of popular songs from mainstream artists that the user chooses. We chose Spotify to gather data from, because we believe it’s  one of the biggest music streaming platforms, which will give us the 
                    most accurate data to work with. We want to be able to give exposure to smaller artists who don’t have the resources or privilege to break out into the industry. Spotify, which began in 2008, is now the world’s leading audio streaming service, with 433 million users, 
                      including 188 million premium subscribers spread across 183 regions (Ruby, D. 2022). Our project will include large datasets with thousands of songs within the 2000s, including the most popular songs as well as less known songs. The user will choose three to five songs they like the most, which will then generate an artist with less than 100,000 monthly listeners that match the genre or is most similar to the selection of songs."),
                    h3("Research Questions"),
                    h3("Data Analyzed"),
                    h3("Key Findings")),
    
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
    
           tabPanel("Genre vs Danceability",
                  h1("Comparing Genre Danceability in Poplar and Unpopular Spotify Data "),
                 # sidebarPanel(selectInput())
                    
                 # ),
    
           tabPanel("Factors of Popularity",
                    h1("Comparing Different Factors of Popularity"),
                    sidebarPanel(checkboxGroupInput(inputId = "sel_factor",
                                                    label = "Select Factor",
                                                    list("popularity", "danceability", "energy", "loudness", "instrumentalness"))),
                    plotOutput("plot1")),
    
           tabPanel("Summary"),
    
           tabPanel("Report"))
))


<<<<<<< HEAD
=======







>>>>>>> bd3bc1acbbfb31289a9df273a2742e5c16cd49be
