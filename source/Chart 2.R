spotify_2000_2019 <- read.csv("C:/Users/msl4e/Documents/info201/Project/project-team-7/data/songs_normalize.csv")
spotify_unpopular_songs <- read.csv("C:/Users/msl4e/Documents/info201/Project/project-team-7/data/unpopular_songs.csv")
spotify_1921_2020 <- read.csv("C:/Users/msl4e/Documents/info201/Project/project-team-7/data/data.csv")

library(dplyr)

spotify_1921_2020 <- spotify_1921_2020 %>% 
  rename("song" = "name", "artist" = "artists")

spotify_unpopular_songs <- spotify_unpopular_songs %>% 
  rename("id" = "track_id", "explicit_T_F" = "explicit")

popular_songs <- full_join(spotify_1921_2020, spotify_2000_2019)
all_songs <- full_join(spotify_unpopular_songs, popular_songs)

new_data_energy <- all_songs %>% 
  select(popularity, energy) %>% 
  group_by(popularity) %>% 
  summarize(energy = mean(energy))


popularity_energy <- ggplot(new_data_energy, aes(x = popularity, y = energy)) +
  geom_point(color = "blue") +
  scale_y_continuous(labels = scales::comma) +
  labs(
    x = "Popularity",
    y = "Average Energy",
    title = "Popularity vs. Energy"
  ) 
plot(popularity_energy)


