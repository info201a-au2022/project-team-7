#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
#spotify_2000_2019 <- songs_normalize
#spotify_unpopular_songs <- unpopular_songs
#spotify_1921_2020 <- data

#spotify_2000_2019 <- read.csv("C:/Users/msl4e/Documents/info201/Project/project-team-7/data/songs_normalize.csv")
#spotify_unpopular_songs <- read.csv("C:/Users/msl4e/Documents/info201/Project/project-team-7/data/unpopular_songs.csv")
#spotify_1921_2020 <- read.csv("C:/Users/msl4e/Documents/info201/Project/project-team-7/data/data.csv")


library(shiny)
library(ggplot2)
library(dplyr)


shinyServer(function(input, output) {
  popular_songs <- read.csv("../data/songs_normalize.csv")
  data <- reactive({
    req(input$sel_genre)
    df <- popular_songs %>%
      group_by(genre) %>% 
      summarize(popularity = popularity) %>% 
      filter(genre %in% input$sel_genre)
  })
  output$plot <- renderPlot({
    ggplot(data()) +
      geom_point(mapping = aes(y = popularity, x = genre), color = "dark green") +
      labs(
        title = "Spotify Top Hits Genre Popularity",
        caption = "Distribution of popularity by genre from the Spotify Top Hits data set"
      )
  })
})




