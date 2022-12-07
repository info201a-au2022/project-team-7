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
                    mainPanel(plotOutput("plot"))),

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
                   mainPanel(plotOutput("plot5"))),
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
                    p("Maddie Lee and Josie Duong"),
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
                      to make sure that underground artists are able to get streams. ")))

))
