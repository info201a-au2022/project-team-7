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

# Define server logic required to draw a histogram
#spotify_2000_2019 <- songs_normalize
#spotify_unpopular_songs <- unpopular_songs
#spotify_1921_2020 <- data

#spotify_2000_2019 <- read.csv("/Users/josieduong/Documents/info201/Project/project-team-7/data/songs_normalize.csv")
#spotify_unpopular_songs <- read.csv("/Users/josieduong/Documents/info201/Project/project-team-7/data/unpopular_songs.csv")
#spotify_1921_2020 <- read.csv("/Users/josieduong/Documents/info201/Project/project-team-7/data/data.csv")

library(shiny)
library(ggplot2)
library(dplyr)

server <- function(input, output) {
  popular_songs <- read.csv("songs_normalize.csv")
  all_songs <- read.csv("data.csv")
  data <- reactive({
    req(input$sel_genre) 
    df <- popular_songs %>%
      group_by(year) %>% 
      summarize(popularity = popularity, genre = genre, danceability = danceability,
                energy = energy, loudness = loudness, instrumentalness = instrumentalness) %>% 
      filter(genre %in% input$sel_genre)})
  data1 <- reactive({
    req(input$sel_genre1)
    df1 <- popular_songs %>%
      group_by(year) %>% 
      summarize(popularity = popularity, genre = genre, danceability = danceability,
                energy = energy, loudness = loudness, instrumentalness = instrumentalness) %>% 
      filter(genre %in% input$sel_genre1)})
  # graph 2 slider graph
  data3 <- reactive({
    req(input$sel_year)
    df3 <- all_songs %>% 
      group_by(year) %>% 
      summarize()
  })
  
  output$plot <- renderPlot({
    ggplot(data()) +
      geom_col(mapping = aes(y = popularity, x = year), fill = "dark green") +
      labs(
        title = "Spotify Top Hits Genre Popularity",
        caption = "Distribution of popularity by genre from the Spotify Top Hits data set"
      )
  })
  output$plot2 <- renderPlot({
    ggplot(data3, aes(y = danceability, x = Year, color = group)) + 
    labs(
     title = "Spotify Top Hits and Widerange Set of Spotify Songs",
    caption = "Comparing the dancability and popularity "
  )
})
  output$plot1 <- renderPlot({
    ggplot(data1()) +
      geom_point(mapping = aes(y = danceability, x = year), color = "red") +
      labs(
        title = "Spotify Top Hits Danceability",
        caption = "How different factors in music influence popularity"
      )
  })
})
  
  



