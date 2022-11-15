spotify_2000_2019 <- songs_normalize
spotify_unpopular_songs <- unpopular_songs
spotify_1921_2020 <- data

spotify_2000_2019 <- read.csv("C:/Users/msl4e/Documents/info201/Project/project-team-7/data/songs_normalize.csv")
spotify_unpopular_songs <- read.csv("C:/Users/msl4e/Documents/info201/Project/project-team-7/data/unpopular_songs.csv")
spotify_1921_2020 <- read.csv("C:/Users/msl4e/Documents/info201/Project/project-team-7/data/data.csv")

library(dplyr)

popular_songs <- full_join(spotify_1921_2020, spotify_2000_2019)
all_songs <- full_join(spotify_unpopular_songs, popular_songs)

spotify_1921_2020 <- spotify_1921_2020 %>% 
  rename("song" = "name", "artist" = "artists")

spotify_unpopular_songs <- spotify_unpopular_songs %>% 
  rename("id" = "track_id", "explicit_T_F" = "explicit")

new_data <- all_songs %>% 
  select(popularity, danceability) %>% 
  group_by(popularity) %>% 
  summarize(danceability = mean(danceability))


popularity_danceability <- ggplot(new_data, aes(x = popularity, y = danceability)) +
  geom_point(color = "blue") +
  scale_y_continuous(labels = scales::comma) +
  labs(
    x = "Popularity",
    y = "Average Danceability",
    title = "Popularity vs. Danceability"
  ) 
plot(popularity_danceability)


#bar chart option
#popularity_danceability2 <- ggplot(data = new_data) +
  #geom_col(mapping = aes(x = popularity, y = danceability), fill = "lightgreen") +
  #scale_y_continuous(labels = scales::comma) +
  #labs(
    #x = "Popularity",
    #y = "Average Danceability",
    #title = "Popularity vs. Danceability"
  #) 
#plot(popularity_danceability2)



