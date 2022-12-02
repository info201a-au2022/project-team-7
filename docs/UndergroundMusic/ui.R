#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
shinyUI(navbarPage("Underground Music",
           tabPanel("Introduction"),
           tabPanel("Genre vs. Popularity",
                    h1("Comparing Genre Popularity in Spotify Top Hits and 
                       Underground Songs"),
                    selectInput(inputId = "sel_genre",
                                label = "Select Genre",
                                list("country", "Dance/Electronic", "easy listening",
                                     "hip hop", "hip hop, Dance/Electronic", "hip hop, R&B", "latin", "metal", "pop",
                                     "R&B", "rock", "pop, easy listening, jazz", "rock, classical",
                                     "rock, pop, metal, Dance/Electronic", 
                                     "World/Traditional, Folk/Acoustic")),
                    plotOutput("plot")),
           tabPanel("Summary"),
           tabPanel("Report")))







