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


#spotify_2000_2019 <- songs_normalize
#spotify_unpopular_songs <- unpopular_songs
#spotify_1921_2020 <- data

#spotify_2000_2019 <- read.csv("/Users/josieduong/Documents/info201/Project/project-team-7/data/songs_normalize.csv")
#spotify_unpopular_songs <- read.csv("/Users/josieduong/Documents/info201/Project/project-team-7/data/unpopular_songs.csv")
#spotify_1921_2020 <- read.csv("/Users/josieduong/Documents/info201/Project/project-team-7/data/data.csv")

library(shiny)
library(ggplot2)
library(dplyr)
library(plotly)
library(tidyr)

server <- function(input, output) {
  popular_songs <- read.csv("songs_normalize.csv")
  all_songs <- read.csv("data.csv")
  
  data <- reactive({
    req(input$sel_genre) 
    df <- popular_songs %>%
      group_by(year) %>% 
      summarize(popularity = popularity, genre = genre, danceability = danceability,
                energy = energy, loudness = loudness, instrumentalness = instrumentalness) %>% 
      filter(genre %in% input$sel_genre)
    })
  data1 <- reactive({
    req(input$sel_genre1)
    df1 <- popular_songs %>%
      group_by(year) %>% 
      summarize(popularity = popularity, genre = genre, danceability = danceability,
                energy = energy, loudness = loudness, instrumentalness = instrumentalness) %>% 
       filter(genre %in% input$sel_genre1)})
  
# graph 2 slider graph
#  data3 <- reactive({
#  req(input$sel_year)
#  df3 <- all_songs %>% 
#  group_by(year) %>% 
#  filter(year %in% input$sel_year) %>% 
#  summarize(popularity = popularity, year = year) 
#  })
  
  data2 <- reactive({
    req(input$sel_genre2)
    df2 <- popular_songs %>% 
      group_by(year) %>% 
      summarize(popularity = popularity, genre = genre, danceability = danceability,
                energy = energy, loudness = loudness, instrumentalness = instrumentalness) %>% 
      filter(genre %in% input$sel_genre2)
  })
  data4 <- reactive({
    req(input$sel_genre3)
    df4 <- popular_songs %>% 
      group_by(year) %>% 
      summarize(popularity = popularity, genre = genre, danceability = danceability,
                energy = energy, loudness = loudness, instrumentalness = instrumentalness) %>% 
      filter(genre %in% input$sel_genre3)
  })
  data5 <- reactive ({
    req(input$sel_genre4)
    df5 <- popular_songs %>% 
      group_by(year) %>% 
      summarize(popularity = popularity, genre = genre, danceability = danceability,
                energy = energy, loudness = loudness, instrumentalness = instrumentalness) %>% 
      filter(genre %in% input$sel_genre4)
  })

  output$plot <- renderPlot({
    ggplot(data()) +
      geom_col(mapping = aes(y = popularity, x = year), fill = "dark green") +
      labs(
        title = "Spotify Top Hits Genre Popularity",
        caption = "Distribution of popularity by genre from the Spotify Top Hits data set"
      )
  })

#  output$plot2 <- renderPlot({
#    ggplot(data3()) +
 #   geom_histogram(mapping = aes(y = danceability, x = Year), color = "pink", fill = "white", bandwidth = 0.5, bins = 2020) + 
#    labs(
 #    title = "Year published vs Popularity of a Song",
 #   caption = "Comparing Year and popularity"
 #   )
# })
  output$plot1 <- renderPlot({
    ggplot(data1()) +
      geom_point(mapping = aes(y = danceability, x = year), color = "red", size = 2.5) +
      labs(
        title = "Spotify Top Hits Danceability",
        caption = "How danceability influences popularity"
      )
  })
  output$plot3 <- renderPlot({
    ggplot(data2()) +
      geom_point(mapping = aes(y = energy, x = year), color = "blue", size = 2.5) +
      labs(
        title = "Spotify Top Hits Energy",
        caption = "How energy influences popularity"
      )
  })
  output$plot4 <- renderPlot({
    ggplot(data4()) +
      geom_point(mapping = aes(y = loudness, x = year), color = "purple", size = 2.5) +
      labs(
        title = "Spotify Top Hits Loudness",
        caption = "How loudness influences popularity"
        )
  })
  output$plot5 <- renderPlot({
    ggplot(data5()) +
      geom_point(mapping = aes(y = instrumentalness, x = year), color = "dark green", size = 2.5) +
      labs(
        title = "Spotify Top Hits Instrumentalness",
        caption = "How instrumentalness influences popularity"
      )
  })
  
  genre_list <- popular_songs %>%
    select(genre, popularity) %>%
    group_by(genre) %>%
    summarize(avg_popularity = mean(popularity, na.rm = TRUE)) %>%
    spread(key = genre, value = avg_popularity) %>%
    head(0)
  
  data6 <- reactive({
    df6 <- popular_songs %>%
    select(year, genre, popularity, danceability, energy, acousticness, liveness) %>%
    mutate(across(popularity, round, 1)) %>%
    arrange(popularity) %>%
    group_by(popularity) %>%
    group_by(year, .add = TRUE) %>%
    summarize(year = year, popularity = popularity, genre = genre,
              danceability = mean(danceability, na.rm = TRUE),
              energy = mean(energy, na.rm = TRUE),
              acousticness = mean(acousticness, na.rm = TRUE),
              liveness = mean(liveness, na.rm = TRUE)) %>%
    distinct(year, popularity, genre, .keep_all = TRUE) %>% 
    filter(grepl(input$SelectedGenre, genre)) %>%
    filter(grepl(input$SelectedYear, year)) 
    return(df6)
  })
  
  output$plot6 <- renderPlotly({
    p <- plot_ly(data = data6(), x = ~popularity, y = ~danceability, name = 'Danceability', type = 'scatter') %>%
      layout(title = list(text = '<b>Popularity by Genre and Year</b>', font = list(size = 16)),
             xaxis = list(range=c(0,100)), yaxis = list(range=c(0,1)),
             xaxis = list(title = '<b>Popularity</b> (0-100)'), 
             yaxis = list(title = '<b>Popularity Criteria Rating</b> (0-1)'),
             legend = list(title=list(text='<b>Popularity Criteria</b>')))
    p <- p %>% add_trace(y = ~energy, name = 'Energy')
    p <- p %>% add_trace(y = ~acousticness, name = 'Acousticness')
    p <- p %>% add_trace(y = ~liveness, name = 'Liveness')
})

}


