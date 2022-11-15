summarise(spotify_2000_2019, energy_mean = mean(energy), danceability_median = median(danceability))
summarise(spotify_1921_2020, energy_mean = mean(energy), danceability_median = median(danceability))
summarise(spotify_unpopular_songs, energy_mean = mean(energy), danceability_median = median(danceability))

summarise(spotify_2000_2019, danceability_mean = mean(danceability), energy_median = median(energy))
summarise(spotify_1921_2020, danceability_mean = mean(danceability), energy_median = median(energy))
summarise(spotify_unpopular_songs, danceability_mean = mean(danceability), energy_median= median(energy))

max_energy_1921_2020 <- max(spotify_1921_2020$energy)

min(spotify_1921_2020$energy)
mean(spotify_1921_2020$energy)
length(spotify_1921_2020$energy)

max_danceability_1921_2020 <- max(spotify_1921_2020$danceability)

min(spotify_1921_2020$danceability)
mean(spotify_1921_2020$danceability)
length(spotify_1921_2020$danceability)

max_energy_unpopular <- max(spotify_unpopular_songs$energy)

min(spotify_unpopular_songs$energy)
mean(spotify_unpopular_songs$energy)
length(spotify_unpopular_songs$energy)

max_danceability_unpopular <- max(spotify_unpopular_songs$danceability)

min(spotify_unpopular_songs$danceability)
mean(spotify_unpopular_songs$danceability)
length(spotify_unpopular_songs$danceability)

max_energy_2000_2019 <- max(spotify_2000_2019$energy)

min(spotify_2000_2019$energy)
mean(spotify_2000_2019$energy)
length(spotify_2000_2019$energy)

max_danceability_2000_2019 <- max(spotify_2000_2019$danceability)

min(spotify_2000_2019$danceability)
mean(spotify_2000_2019$danceability)
length(spotify_2000_2019$danceability)