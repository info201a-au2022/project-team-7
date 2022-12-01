#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
spotify_2000_2019 <- songs_normalize
spotify_unpopular_songs <- unpopular_songs
spotify_1921_2020 <- data

spotify_2000_2019 <- read.csv("C:/Users/msl4e/Documents/info201/Project/project-team-7/data/songs_normalize.csv")
spotify_unpopular_songs <- read.csv("C:/Users/msl4e/Documents/info201/Project/project-team-7/data/unpopular_songs.csv")
spotify_1921_2020 <- read.csv("C:/Users/msl4e/Documents/info201/Project/project-team-7/data/data.csv")
library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white',
             xlab = 'Waiting time to next eruption (in mins)',
             main = 'Histogram of waiting times')

    })

})

