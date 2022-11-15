library(tidyverse)
library(dplyr)

# Reading 3 sets of data from .csv files

spotify_2000_2019 <- read.csv("./info201/Project/project-team-7/data/songs_normalize.csv")
spotify_unpopular_songs <- read.csv("./info201/Project/project-team-7/data/unpopular_songs.csv")
spotify_1921_2020 <- read.csv("./info201/Project/project-team-7/data/data.csv")

# Renaming columns to match all 3 sets of data

spotify_1921_2020 <- spotify_1921_2020 %>%
  rename("song" = "name", "artist" = "artists")

spotify_unpopular_songs <- spotify_unpopular_songs %>%
  rename("id" = "track_id", "song" = "track_name", "artist" = "track_artist")

# Reassigning explicit columns across sets of data to equal logical values

spotify_1921_2020$explicit <- as.logical(spotify_1921_2020$explicit)

spotify_unpopular_songs$explicit <- as.logical(spotify_unpopular_songs$explicit)

# Joining all 3 sets of data into both a "popular songs" set and an "all songs" set

popular_songs <- full_join(spotify_1921_2020, spotify_2000_2019)
all_songs <- full_join(spotify_unpopular_songs, popular_songs)

# Averaging statistics for each artist in Spotify

artist_info <- all_songs %>%
  group_by(artist) %>%
  summarize_at(c("danceability", "energy", "key", "loudness", "mode", "speechiness", "acousticness", "instrumentalness", "liveness", "valence", "tempo", "duration_ms", "popularity"), mean, na.rm = TRUE)

# Averaging statistics for all songs in Spotify

summary_info <- all_songs %>%
  summarize_at(c("danceability", "energy", "key", "loudness", "mode", "speechiness", "acousticness", "instrumentalness", "liveness", "valence", "tempo", "duration_ms", "popularity"), mean, na.rm = TRUE)

#summary_info code
library(dplyr)

summarise(spotify_2000_2019, energy_mean = mean(energy), danceability_median = median(danceability))
summarise(spotify_1921_2020, energy_mean = mean(energy), danceability_median = median(danceability))
summarise(spotify_unpopular_songs, energy_mean = mean(energy), danceability_median = median(danceability))

summarise(spotify_2000_2019, danceability_mean = mean(danceability), energy_median = median(energy))
summarise(spotify_1921_2020, danceability_mean = mean(danceability), energy_median = median(energy))
summarise(spotify_unpopular_songs, danceability_mean = mean(danceability), energy_median= median(energy))

max(spotify_1921_2020$energy)
min(spotify_1921_2020$energy)
mean(spotify_1921_2020$energy)
length(spotify_1921_2020$energy)

max(spotify_1921_2020$danceability)
min(spotify_1921_2020$danceability)
mean(spotify_1921_2020$danceability)
length(spotify_1921_2020$danceability)

max(spotify_unpopular_songs$energy)
min(spotify_unpopular_songs$energy)
mean(spotify_unpopular_songs$energy)
length(spotify_unpopular_songs$energy)

max(spotify_unpopular_songs$danceability)
min(spotify_unpopular_songs$danceability)
mean(spotify_unpopular_songs$danceability)
length(spotify_unpopular_songs$danceability)

max(spotify_2000_2019$energy)
min(spotify_2000_2019$energy)
mean(spotify_2000_2019$energy)
length(spotify_2000_2019$energy)

max(spotify_2000_2019$danceability)
min(spotify_2000_2019$danceability)
mean(spotify_2000_2019$danceability)
length(spotify_2000_2019$danceability)
