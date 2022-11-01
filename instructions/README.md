# Instructions for P01: Project Proposal
### Code name: Underground

### Project title: Underground Music

### Josie Duong (jduong28@uw.edu), Maddie Lee (msl2002@uw.edu) , Shane Beres (sberes44@uw.edu)

### INFO-201: Technical Foundations of Informatics - The Information School - University of Washington

### Autumn 2022

**Abstract**

Our main question for this project is, “Does popularity determine good music?”. This question is important because there are millions of great artists in the world that aren’t given the resources, access, or platforms to kick start their music career. To address this question we will use data from music platforms to provide recommendations for underground artists based on a listener's favorite mainstream artists.

**Keywords**

Taste, exposure, genre, trends, downloads

**Introduction**

Our project Underground Music will generate an underground music artist based off of popular songs from mainstream artists that the user chooses. We chose Spotify to gather data from, because we believe it’s  one of the biggest music streaming platforms, which will give us the most accurate data to work with. We want to be able to give exposure to smaller artists who don’t have the resources or privilege to break out into the industry. Spotify, which began in 2008, is now the world’s leading audio streaming service, with 433 million users, including 188 million premium subscribers spread across 183 regions (Ruby, D. 2022). Our project will include large datasets with thousands of songs within the 2000s, including the most popular songs as well as less known songs. The user will choose three to five songs they like the most, which will then generate an artist with less than 100,000 monthly listeners that match the genre or is most similar to the selection of songs.

**Problem Domain**

In a world where society is always under the influence of the media and trends, it can be hard for smaller artists to get the exposure they deserve for their music. It has been found that 78.4% of artists on Spotify have less than 50 monthly listeners (Music Business Worldwide, 2022). This means that over half of the artists on Spotify are barely getting any consistent listens, while mainstream artists continue to rack up millions of listeners each month. It’s difficult to start a music career without any resources or platforms. Sometimes talent alone isn’t enough to become successful in the music industry. Through our project, underground artists become indirect stakeholders that can benefit from our direct stakeholders: the listeners. Other indirect stakeholders include streaming providers and record labels. Underground artists may get more exposure through our project, causing streams on apps like Spotify or Apple Music to increase. This increase in streams may cause them to catch the attention of record labels who can help boost their platform and increase their chances of a successful career. Record labels are known to easily get your songs on the radio, set up interviews, and generate a fanbase. They have the connections to get your songs in the mainstream media (Kevin, 2019). The benefits of this project mostly affect underground artists. These benefits include helping talented musicians expand their careers, demonstrating that streams do not determine the quality of a song, and helping break through the barriers of certain trends that limit our minds to certain genres or artists. Another benefit includes the money underground artists could make through exposure. It is estimated that artists earn an average of $0.01 per stream (McEvoy 2022). This means that artists need to have millions of streams to make a living change. Through this project, streaming platforms may also feel the need to change their recommendation algorithms, in order to make sure that underground artists are able to get streams.  The possible harms of this project include our own biases on what distinguishes a mainstream artist from an underground artist. We are planning on labeling any artist with less than 100,000 monthly listeners as underground. Artists that have 200,000 or even 300,000 monthly listeners could be considered to have low popularity by the general public. We are using our own judgment in this process, making it potentially biased and not giving every underground artist the opportunity to be heard.

**Research Questions**

Is good music determined by the amount of streams? This question is important because the main point of our project is to give exposure and recognition to lesser known artists and to essentially debunk this question. The motivation behind this question would be to disprove it in a sense.
How does genre impact the amount of streams a song gets? We’ve noticed from our own personal experience that certain genres are more popular than others, especially since we are college students and that’s our demographic. We want to see the contrast of how big the gap of popularity is between genres.
What year generated the most popular songs? Trends in music change throughout time, so it is important to note these trends when thinking about the criteria for a good song. Songs that were popular years ago will not be the most popular songs today. We want to find the pattern of these changes and know what years generated the most popular songs.


**The Dataset**

Our problem domain focuses on how the mainstream media impacts the popularity of songs. We are questioning whether the number of streams can determine if music is quality or not. One of our datasets displays the top Spotify hits from 2000-2019. This dataset includes musical aspects of the song displayed in integers as well as popularity. This will help us answer what determines a good song and if the quality of music is determined by popularity. We can also draw conclusions about what genre was the most popular on average and which year generated the most popular songs. We are also using a dataset that showcases Spotify’s most unpopular songs. This is where we will pull our song recommendations for underground artists based on the listeners favorite songs. We will do this by comparing genres and analyzing how different music components such as energy, danceability, duration, etc. affect a song’s popularity. Lastly, we are using a dataset that tracks the popularity of Spotify’s top tracks by genre. This will help us determine how genre impacts the amount of streams a song gets.

![Spotify Dataset](https://github.com/info201a-au2022/project-team-7/blob/main/Images/dataset_table.PNG)

The data collected within these datasets was collected by members of the Spotify community and updated recently to account for data up to the year 2020. This data was collected for the purpose of analyzing trends and creating visualizations which present the data showing popularity and other stats relating to Spotify’s streamed music over the years. The data collection was done by private individuals and posted through the open source dataset hub, Kaggle. Data was validated by scraping the data directly from the Spotify API, along with the use of multiple datasets in this project which can be used to validate the consistency of popularity of the data. The data was obtained through research into open source available sources of datasets relating to Spotify popularity and engagement, and it was found through Kaggle.


**Expected Implications**

The expected implications of this research project will directly relate to the cross-analysis of popular music vs. good music criteria. The implications for technologists, designers, and policymakers will be a better understanding of what algorithms are present within the music industry when it comes to determining which music is presented to the consumer of music services, in this case specifically Spotify. The findings of this project will present a better characteristic of how much popular music is presented to consumers, along with better means of finding music which aligns better with the user, rather than what is simply popular in a chosen genre of music. This tool would improve the music industry for those that are underground artists developing quality, enjoyable music which is not getting the coverage that popular music of the same caliber of quality is getting. One complication of this tool is that popular artists tend to trend higher and generate more listens due to their popularity and recognizability, which would imply that by directing consumers away from popular music, the entire streaming service could potentially decrease the amount of streams per month overall. This situation would rely on the designers and technologists involved with the implementation of this tool to follow best practices with scaling and deploying the feature without reducing the quality and value of Spotify.

**Limitations**

The biggest limitation of this project is that there is no way we can collect data on every single artist in the world. There will inevitably be some underground artists that are not found in our dataset. Although this limitation seems like a big problem, our project will still have a lot of benefits for underground artists, as some of them might get exposure they wouldn’t have in the first place. Even one stream makes a difference. If a listener is recommended an underground artist through our project, they might tell their friends about it and a snowball effect might ensue. Another limitation of this project is that we are doing artist recommendations based on genre. Artists make songs with different types of genres, but the one they are listed on Spotify under will be the one recommendations are based off of. This could make recommendations inaccurate and not appeasing to the listener looking for new music.


_Thank you to our TA Yubing for guiding us through this project. Also thank you to Spotify for providing us with all our data._


**Acknowledgements**

Thank you to our TA Yubing for guiding us through this project. Also thank you to Spotify for providing us with all our data.

**References**

Ruby, D. (2022, September 16). Spotify Stats 2022 - (Facts, Data, Infographics). demandsage. Retrieved October 31, 2022, from https://www.demandsage.com/spotify-stats/

Ingham, T. (2022, April 25). Nearly 80% of artists on Spotify have fewer than 50 monthly listeners. Music Business Worldwide. Retrieved October 31, 2022, from https://www.musicbusinessworldwide.com/over-75-of-artists-on-spotify-have-fewer-than-50-monthly-listeners/

Ingham, Tim. “How Many Artists Are Generating $50k+ a Year on Spotify? Over 13,000.” Music Business Worldwide, 18 Mar. 2021, https://www.musicbusinessworldwide.com/how-many-artists-are-generating-more-than-50k-a-year-on-spotify-over-13000/.

McEvoy, Clovis. “Unlabelled: Do You Really Need a Record Label to Succeed in 2022?” MusicTech, https://musictech.com/features/opinion-analysis/unlabelled-do-you-really-need-a-record-label-to-succeed-in-2022/.

Kevin. “Why You Need a Major Label to Be a Successful Music Artist.” Mella Music, 3 June 2019, https://mellamusic.com/why-you-need-a-major-label-to-be-a-successful-music-artist/.
