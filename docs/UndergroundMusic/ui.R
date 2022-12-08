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

shinyUI(fluidPage(
  navbarPage(
    theme = "cerulean",
    "Underground Music",
           tabPanel("Overview",
                    h3("Introduction"),
                    p("Our project will explore what makes a song popular. We chose Spotify to gather data from, because 
                      we believe it’s  one of the biggest music streaming platforms, which will 
                      give us the most accurate data to work with. We want to find the trends within the 
                      data to determine statistically what makes a quality song, and if there is any relationship
                      at all. Spotify, which began in 2008, is now the world’s leading audio streaming 
                      service, with 433 million users, including 188 million premium subscribers 
                      spread across 183 regions (Ruby, D. 2022). Our project will include large 
                      datasets with thousands of songs within the 2000s, including the most popular 
                      songs as well as less known songs."),
                    h3("Research questions"),
                    p("1. Is good music determined by the amount of streams? This question is important because the main point of 
                    our project is to give exposure and recognition to lesser known artists and to essentially debunk this question.
                    The motivation behind this question would be to disprove it in a sense."),
                    p("2. How does genre impact the amount of streams a song gets? We’ve noticed from our own personal experience that 
                    certain genres are more popular than others, especially since we are college students and that’s our demographic. We 
                    want to see the contrast of how big the gap of popularity is between genres."),
                    p("3. What year generated the most popular songs? Trends in music change throughout time, so it is important to note
                    these trends when thinking about the criteria for a good song. Songs that were popular years ago will not be the most 
                    popular songs today. We want to find the pattern of these changes and know what years generated the most popular songs.")

                     ),
    
           tabPanel("Genre vs Top Hits Popularity",
                    h1("Comparing Genre Popularity in Spotify Top Hits"),
                    sidebarPanel(selectInput(inputId = "sel_genre",
                                label = "Select Genre",
                                list("country", "Dance/Electronic","hip hop", 
                                     "hip hop, Dance/Electronic", "hip hop, R&B", "latin", "metal", "pop",
                                     "R&B", "rock"))),
                    mainPanel(plotOutput("plot")),
                    p("The purpose of this chart is to illustrate genre popularity throughout time.
                      This way the user can compare how genre popularity has increased, decreased, or
                      stayed constant. The graph illustrates what genres were popular at certain time.")),

#          tabPanel("Popularity vs Year",
#                 h1("Comparing Popularity of Songs Based on Year Published"),
 #                 sidebarPanel(sliderInput(inputId = "sel_year",
#                                          label = "Select Year",
 #                                          min = "1921",
#                                           max = "2020",
#                                          value = "1921")),
 #                mainPanel(plotOutput("plot2"))),
  
           tabPanel("Factors of Popularity",
                    h1("Comparing Different Factors of Popularity"),
                    sidebarPanel(selectInput(inputId = "sel_genre1",
                                                    label = "Select Genre",
                                                    list("country", "Dance/Electronic","hip hop", 
                                                         "hip hop, Dance/Electronic", "hip hop, R&B", "latin", "metal", "pop",
                                                         "R&B", "rock"))), 
                    mainPanel(plotOutput("plot1")),
                    sidebarPanel(selectInput(inputId = "sel_genre2",
                                             label = "Select Genre",
                                             list("country", "Dance/Electronic","hip hop", 
                                                  "hip hop, Dance/Electronic", "hip hop, R&B", "latin", "metal", "pop",
                                                  "R&B", "rock"))),
                   mainPanel(plotOutput("plot3")),
                   sidebarPanel(selectInput(inputId = "sel_genre3",
                                            label = "Select Genre",
                                            list("country", "Dance/Electronic","hip hop", 
                                                 "hip hop, Dance/Electronic", "hip hop, R&B", "latin", "metal", "pop",
                                                 "R&B", "rock"))),
                   mainPanel(plotOutput("plot4")),
                   sidebarPanel(selectInput(inputId = "sel_genre4",
                                             label = "Select Genre",
                                             list("country", "Dance/Electronic","hip hop", 
                                                  "hip hop, Dance/Electronic", "hip hop, R&B", "latin", "metal", "pop",
                                                  "R&B", "rock"))),

                   mainPanel(plotOutput("plot5"))
                   ),

           tabPanel("Popularity by Genre and Year",
                    h1("Popularity vs. Danceability, Energy, Acousticness, and Liveness by Genre and Year"),
                    sidebarPanel(varSelectInput(
                      "SelectedGenre",
                      label = "Selected Genre",
                      genre_list,
                      multiple = FALSE),
                                 selectInput(inputId = "SelectedYear",
                                             label = "Selected Year",
                                             list("2005", "2006", "2007", "2008", "2009", "2010", "2012", "2013"))),
                    mainPanel(plotlyOutput("plot6"))),
                    

           tabPanel("Summary"),

                   mainPanel(plotOutput("plot5")),
                   p("These graphs illustrate how different factors of music change over time. The factors
                     we are comparing are danceability, energy, loudness, and instrumentalness. Users can
                     look for patterns in these graphs and compare them to the popularity graph to see what
                     makes a popular song.")),
           tabPanel("Summary",
                    h3("Summary"),
                    p("Is good music based off of popularity? What factors affect the popularity and listenability
                      of a song? Our project UnderGround music allows the user to navigate through different
                      interactive graphs to see how the data diverges. Through this project we will explore Spotify data sets that help us 
                      see the correlation between popularity, genre, and other aspects of music. We use a couple datasets that track the 
                      different categories of a widerange of songs on Spotify - such as; popularity, danceability, energy, loudness, and 
                      instrumentalness. We chose to source our music data from Spotify users because because we believe it’s shown statistically
                      to be one of the biggest music streaming platforms, which will give us the most accurate data to work with. ")),

    
           tabPanel("Report",
                    h3("Code Name"),
                    p("Underground"),
                    h3("Project Title"),
                    p("Spotify Data Analysis"),
                    h3("Authors"),
                    p("Maddie Lee, Josie Duong, Shane Beres"),
                    h3("Affiliation"),
                    p("INFO-201: Technical Foundations of Informatics - The Information School - University of Washington "),
                    h3("Date"),
                    p("Autumn 2022"),
                    h3("Abstract"),
                    p("Our main question for this project is, 
                      “Does popularity determine good music?”. We wonder what factors influence as song's
                      popularity. Through this project we will explore Spotify data sets that help us 
                      see the correlation between popularity, genre, and other aspects of music. We want
                      to find out what makes a song popular and if popularity is truly an indicator of
                      good music."),
                    h3("Keywords"),
                    p("Taste, exposure, genre, trends"),
                    h3("Introduction"),
                    p("Our project will explore what makes a song popular. We chose Spotify to gather data from, because 
                      we believe it’s  one of the biggest music streaming platforms, which will 
                      give us the most accurate data to work with. We want to find the trends within the 
                      data to determine statistically what makes a quality song, and if there is any relationship
                      at all. Spotify, which began in 2008, is now the world’s leading audio streaming 
                      service, with 433 million users, including 188 million premium subscribers 
                      spread across 183 regions (Ruby, D. 2022). Our project will include large 
                      datasets with thousands of songs within the 2000s, including the most popular 
                      songs as well as less known songs."), 
                    h3("Problem Domain"),
                    p("In a world where society is always under the influence of the media and trends, it can be hard for 
                      smaller artists to get the exposure they deserve for their music. It has been found that 78.4% of 
                      artists on Spotify have less than 50 monthly listeners (Music Business Worldwide, 2022). This means 
                      that over half of the artists on Spotify are barely getting any consistent listens, while mainstream 
                      artists continue to rack up millions of listeners each month. It’s difficult to start a music career 
                      without any resources or platforms. Sometimes talent alone isn’t enough to become successful in the music
                      industry. Through our project, underground artists become indirect stakeholders that can benefit from our 
                      direct stakeholders: the listeners. Other indirect stakeholders include streaming providers and record labels.
                      Underground artists may get more exposure through our project, causing streams on apps like Spotify or Apple Music 
                      to increase. This increase in streams may cause them to catch the attention of record labels who can help boost their 
                      platform and increase their chances of a successful career. Record labels are known to easily get your songs on the radio, 
                      set up interviews, and generate a fanbase. They have the connections to get your songs in the mainstream media (Kevin, 2019).
                      The benefits of this project mostly affect underground artists. These benefits include helping talented musicians expand their 
                      careers, demonstrating that streams do not determine the quality of a song, and helping break through the barriers of certain 
                      trends that limit our minds to certain genres or artists. Another benefit includes the money underground artists could make through exposure. 
                      It is estimated that artists earn an average of $0.01 per stream (McEvoy 2022). This means that artists need to have millions of streams to 
                      make a living change. Through this project, streaming platforms may also feel the need to change their recommendation algorithms, in order 
                      to make sure that underground artists are able to get streams. "),
                    h3("Research Questions"),
                    p("1. Is good music determined by popularity? This question is 
                    important because the main point of our project is to give exposure and recognition to lesser known artists and to essentially debunk this question. The motivation behind this question would be to disprove it in a sense.
                    2. How does genre impact the popularity of a song? We’ve noticed from our own personal experience that certain genres are more popular than others, especially since we are college students and that’s our demographic. We want to see the contrast of how big the gap of popularity is between genres.
                    3. What is the trend of popularity for songs throughout the years? Trends in music change throughout time, so it is important to note these trends when thinking about the criteria for a good song. Songs that were popular years ago will not be the most popular songs today. We want to find the pattern of these changes and know what years generated the most popular songs. 
                    "),
                    h3("The Dataset"),
                    p("Our problem domain focuses on how the mainstream media impacts the 
                      popularity of songs. We are questioning whether the number of streams can
                      determine if music is quality or not. One of our datasets displays the top 
                      Spotify hits from 2000-2019. This dataset includes musical aspects of the song 
                      displayed in integers as well as popularity. This will help us answer what determines
                      a good song and if the quality of music is determined by popularity. 
                      We can also draw conclusions about what genre was the most popular on 
                      average and which year generated the most popular songs. We are also 
                      using a dataset that showcases Spotify’s most unpopular songs. This is 
                      where we will pull our song recommendations for underground artists based 
                      on the listeners favorite songs. We will do this by comparing genres and 
                      analyzing how different music components such as energy, danceability, duration, 
                      etc. affect a song’s popularity. Lastly, we are using a dataset that tracks the 
                      popularity of Spotify’s top tracks by genre. This will help us determine how genre 
                      impacts the amount of streams a song gets. The data collected within these 
                      datasets was collected by members of the Spotify community and updated recently 
                      to account for data up to the year 2020. This data was collected for the purpose 
                      of analyzing trends and creating visualizations which present the data showing 
                      popularity and other stats relating to Spotify’s streamed music over the years. 
                      The data collection was done by private individuals and posted through the open 
                      source dataset hub, Kaggle. Data was validated by scraping the data directly from 
                      the Spotify API, along with the use of multiple datasets in this project which can 
                      be used to validate the consistency of popularity of the data. The data was obtained 
                      through research into open source available sources of datasets relating to Spotify 
                      popularity and engagement, and it was found through Kaggle."),
                    h3("Findings"),
                    p("Our findings suggest that good music is not determined by popularity. What defines
                      good music is highly subjective to the listener. There are certain artists that will
                      always be popular and get a lot of streams. There are certain genres that will garner
                      the most streams. Our findings show that pop is a genre that has been popular throughout
                      time whereas genres like metal have decreased in popularity through out time. Popular
                      genres like pop tend to have higher ratings in terms of danceability, energy, and loudness.
                      There seems to be a consistent low level of instrumentalness. Some genres show little to
                      no correlation in terms of dancebility, energy, loudness, and instrumentalness. Genre does
                      play a part in the popularity of a song, as it speaks to a general audience. Some genres
                      are more niche than the others and are less main stream. There is more exposure to popular
                      genres. Although genre does play a part in popularity, it isn't popularity that creates
                      a quality song."),
                    h3("Discussion"),
                    p("Some implications of our analysis include the idea that the more popular genres tend
                      to have a more upbeat sound with low instrumentalness. There are also many sub genres 
                      within a genre that can explain why genres like electronic/dance have such little correlation
                      in terms of danceability, energy, loudness, and instrumentalness. Not every song in a genre
                      will sound the same. This makes it hard to base popularity and quality of a song soley
                      off genre. There are other factors such as the artist and the lyrics of a song. There isn't
                      really a way to quantify lyricism which is a large part of what speaks to people when
                      they listen to music. They find themselves able to relate to songs and form connections 
                      with them. It is a stereotype that a lot of main stream songs do not have deep lyrics and 
                      are just catchy. This would be another cool thing to explore if it was in the data set. Furthermore,
                      genres that decreased in popularity over time such as metal, might be due to the fact
                      that that was what was considered main stream at the time. In the 80s and 90s there was 
                      a lot of emphasis on bands and rock music, while today pop and rap are more popular and main stream.
                      Genre popularity changes throughout time according to trends and what the majority of the population
                      enjoys."),
                    h3("Conclusion"),
                    p("In conclusion, our analysis of Spotify data demonstrates the idea that music is subjective and it's
                      popularity follows the trends of the time periods. Someones favorite song might be the worst song
                      someone else might've heard. That song might have the same danceability, energy, loudness,
                      and instrumentalness as a popular song in the main stream media. Genre popularity and trends will
                      always change through time, but people's preferences and opinions on music will always be constant
                      to their individual selves."),
                    h3("References"),
                    p("- Ruby, D. (2022, September 16). Spotify Stats 2022 - (Facts, Data, Infographics). demandsage. Retrieved October 31, 2022, from https://www.demandsage.com/spotify-stats/ 
                      - Ingham, T. (2022, April 25). Nearly 80% of artists on Spotify have fewer than 50 monthly listeners. Music Business Worldwide. Retrieved October 31, 2022, from https://www.musicbusinessworldwide.com/over-75-of-artists-on-spotify-have-fewer-than-50-monthly-listeners/ 
                      - Ingham, Tim. “How Many Artists Are Generating $50k+ a Year on Spotify? Over 13,000.” Music Business Worldwide, 18 Mar. 2021, https://www.musicbusinessworldwide.com/how-many-artists-are-generating-more-than-50k-a-year-on-spotify-over-13000/. 
                      - McEvoy, Clovis. “Unlabelled: Do You Really Need a Record Label to Succeed in 2022?” MusicTech, https://musictech.com/features/opinion-analysis/unlabelled-do-you-really-need-a-record-label-to-succeed-in-2022/. 
                      - Kevin. “Why You Need a Major Label to Be a Successful Music Artist.” Mella Music, 3 June 2019, https://mellamusic.com/why-you-need-a-major-label-to-be-a-successful-music-artist/."
                      )))

))









