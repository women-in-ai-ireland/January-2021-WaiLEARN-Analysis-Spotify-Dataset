## Analysis of Spotify Data

### The Project
Spotify is the largest audio streaming and media provider in the world i.e. it provides digital music, podcasts and video streaming services. It has 345 million active users till date and helpful for the artists to reach their audience and hence, can imagine the amount of data Spotify collects. 
In this project we have explored and analysed Spotify dataset which is available on Kaggle to understand how music has changed over the period of time and to do sentiment analysis for the most popular artist TheBeatles. As it is quite tricky to analyze and understand large datasets, visualizing the data to understand trends and features in the dataset can be of great help. 
Following are the steps we have performed in this project to accomplish the project objective:

1.Exploratory Data Analysis in Tableau
- Understanding how the audio features changed over time against popularity by creating animation in Tableau
- Finding out the most popular artist till date.

2.Twitter Sentiment Analysis in R
- To understand what people are talking about #TheBeatles through tweets.
- Location analysis of twitter users tweeting about #TheBeatles
- The sentiment analysis of #TheBeatles i.e. whether it is positive or negative

3.Statistical Analysis on three different artists in SPSS 
- Descriptive analysis
- Normality test 
- Kruskal-Wallis test 
- Discover if there are any correlations between year and popularity

4.Generating Insights
- Dashboard creation in Tableau to understand more about artists.
- Generating insights of the most popular song TheBeatles by performing Twitter Sentiment Analysis.

The analysis done can help understand some interesting trends of songs over the period from 1921 to 2021 and understand how music has changed over time.

### About data

The data is sourced from Kaggle website (https://www.kaggle.com/yamaerenay/spotify-dataset-19212020-160k-tracks) where the data is collected from Spotify API. The data contains more than 175,000 songs along with the information of artists, genre and year. Attributes mentioned here are calculated by Spotify.

Following are the feature with its description[1]
-ID: ID of the track.
-Acousticness: It represents if the track is acoustic or not and is a confidence measure from 0 to 1. 1 represents high confidence that the song is acoustic. 
-Danceability: it represents the range from 0 to 1 indicating how suitable the song is for dancing.
-Energy: It represents intensity and activity of a track ranging from 0 to 1.
-Duration_ms: the duration of a track in milliseconds.
-Valence: It ranges from 0 to 1 describing the positivity conveyed by a track. Tracks with high valence sound more positive while tracks with lower valence values sound low and sad and negative.
-Popularity: the popularity of the track ranges from the values 0 to 100.
-Tempo: measures overall tempo of a track and the value ranges from -5 to150. In musical terminology, tempo is the speed or pace of a given piece and derives directly from the average beat duration.
-Liveliness: It represents the liveness of the track by detecting the presence of the audience in the recording. The value ranges from 0 to 1.
-Loudness: It measured loudness of a track having values ranging from -60 to 0.
-Speechiness: It represents the presence of spoken words in the track which is measured from 0 to 1. The track having more speech-like recording has a value closer to 1.
-Year: It ranges from 1921 to 2021.

### Analysis
Initially we explored and studied the data in Tableau to understand the features. As the data is quite vast and from 1921 to 2021 visualizing the data in Tableau helped a lot to understand how the features changed over time in terms of popularity. Let’s go through the animations created in Tableau to understand some interesting trends in data over time.
Animation of loudness VS Popularity over the period of time : 
Visualization link: https://public.tableau.com/profile/pooja5954#!/vizhome/SpotifyEDA_16156686828640/LoudnessVSPopularity-Animation

From the following figures we can see that in the initial period loud songs were not very popular and as the time went by we can see that from 1950 loud songs started gaining popularity. In 2020 we can see that there are two groups where loud songs had higher and lower popularity.


![1](https://user-images.githubusercontent.com/68969621/111228230-bff88780-85db-11eb-973b-7d10713fdacc.PNG)
![2](https://user-images.githubusercontent.com/68969621/111228350-f6ce9d80-85db-11eb-8e0c-897078f572b4.PNG)
![1](https://user-images.githubusercontent.com/68969621/111228431-1bc31080-85dc-11eb-9ce1-323e07a27e51.PNG)

### Animation of Speechiness VS Popularity over the period of time : 
Visualization link: 
https://public.tableau.com/profile/pooja5954#!/vizhome/SpotifyEDA_16156686828640/SpeechinessVSPopularity-Animation

From the below figure we can see that on average the speechiness feature has very low value and the popularity value in terms of speechiness feature is also not very high. In 1921 songs with very low values of speechiness were not popular. Even after the speechiness of the songs increased but the popularity didn’t increase. In 2020 we can see that songs with low spechiness value started gaining popularity. This is something interesting to note!

![1](https://user-images.githubusercontent.com/68969621/111228599-60e74280-85dc-11eb-910d-08f05516cbba.PNG)
![2](https://user-images.githubusercontent.com/68969621/111228623-68a6e700-85dc-11eb-969a-da7baa44f2e7.PNG)
![3](https://user-images.githubusercontent.com/68969621/111228638-6f355e80-85dc-11eb-977c-2fff79a0e73f.PNG)


### Animation of Energy VS Popularity over the period of time :
https://public.tableau.com/profile/pooja5954#!/vizhome/SpotifyEDA_16156686828640/EnergyVSPopularity-Animation
On an average the value of Energy feature is 0.5 which is very good but the popularity is not that high. Over the period of time the Energy of songs increased and also gained popularity.

![4](https://user-images.githubusercontent.com/68969621/111228783-b4f22700-85dc-11eb-8242-d144019c1517.PNG)
![5](https://user-images.githubusercontent.com/68969621/111228792-b91e4480-85dc-11eb-886e-1445e3210c30.PNG)
![6](https://user-images.githubusercontent.com/68969621/111228800-bb809e80-85dc-11eb-9fea-013af09f6215.PNG)


### Animation of Instrumentalness VS Popularity over the period of time :
Visualization link: 
https://public.tableau.com/profile/pooja5954#!/vizhome/SpotifyEDA_16156686828640/InstrumentalnessVSPopularity-Animation2

![7](https://user-images.githubusercontent.com/68969621/111228929-f1be1e00-85dc-11eb-9642-5cae77cf72de.PNG)
![8](https://user-images.githubusercontent.com/68969621/111228931-f256b480-85dc-11eb-9c57-81264d9264ef.PNG)
![9](https://user-images.githubusercontent.com/68969621/111228932-f256b480-85dc-11eb-8f84-d4f7a33d9851.PNG)


### Popularity of artists ranked in descending order:
https://public.tableau.com/profile/pooja5954#!/vizhome/SpotifyEDA_16156686828640/popularartists
We can see that over the period of time from 1921-2021 TheBeatles artist is the most popular.

![10](https://user-images.githubusercontent.com/68969621/111228992-0ef2ec80-85dd-11eb-8a9c-831212aad8c2.PNG)


### Dashboard in Tableau to know more about artists:
Link to the dashboard: https://public.tableau.com/profile/pooja5954#!/vizhome/SpotifyEDA_16156686828640/FinalDashbaord?publish=yes

Here you can see a dashboard created in Tableau for the year 2020. The purpose of this dashboard is to know more about artists i.e. from left to right and top to bottom
1. We can see artists ranked by popularity for the year 2020.
2. Based on the artist we can see the songs composed by those artists ranked by popularity.
3. In the middle we can see a line chart to understand the popularity trend of that artist over the period of time.
4. At the bottom we can see 4 scatter plot of 4 audio features i.e. Accousticness, Loudness, Danceability and Instrumentalness against Popularity.

![11](https://user-images.githubusercontent.com/68969621/111229242-7d37af00-85dd-11eb-9b88-3839d4df89e9.PNG)

The dashboard is interactive and if we click on the artists all the information on the dashboard is filtered for that artist. We can easily know the total number songs by that artist, songs ranked by popularity of that artist, the popularity trend of that artist, the nature of song in terms if accousticness,loudness, danceability and instrumentalness against popularity.
Below is the snapshot of the dashboard when we click on Workout Music artist, all other information on the dashboard is filtered accordingly.

![12](https://user-images.githubusercontent.com/68969621/111229293-92acd900-85dd-11eb-9323-6dea549880f0.PNG)

### Twitter Sentiment Analysis
This is a data scraping technique that extracts tweet messages from Twitter.To achieve this, we must first create a Twitter developer account, establish a set of access tokens on R and ensure R is connected with Twitter live server. Information is extracted from the text i.e. unstructured data and getting information from unstructured data needs a lot of processing and cleaning of text. 
In our analysis, we have successfully extracted tweet messages under the hashtag #thebeatles. The overall dataset contained 3638 observations and 90 variables and followed by creating a new data frame with a number of specific variables, including “user_id”, “status_id”, “created_at”, “screen_name”, “text”, “favorite_count”, “retweet_count”, “location” and “verified”. 
The next step is to clean up the dataset by removing all punctuations, special characters, and symbols.

*Location of the users using #thebeatles*
There are 216 unique locations found out of the entire dataset, and the United Kingdom is situated on the rank one within the top 20 locations and we can say that users from United Kingdom are tweeting the most about #thebeatles.

Here is the wordcloud to visualize the top 20 locations. 

![13](https://user-images.githubusercontent.com/68969621/111229431-cdaf0c80-85dd-11eb-8f27-4f00e08ee79d.PNG)

According to further analysis with the total verified user numbers, there are 98.99% unverified users, and only 1.01% are verified.

![14](https://user-images.githubusercontent.com/68969621/111229436-ce47a300-85dd-11eb-9888-0932356b1b36.PNG)

*The Beatles* 

This is another wordcloud established by all common words from tweet messages extracted under the hashtag #thebeatles. 

![15](https://user-images.githubusercontent.com/68969621/111229586-0d75f400-85de-11eb-95c9-c6b3cda4a9e8.PNG)

Next is to implement a sentimental package (nrc) to analyze the overall emotion scores, the final output has shown the total sentiment plot combined with different emotions.

![16](https://user-images.githubusercontent.com/68969621/111229589-0e0e8a80-85de-11eb-84f9-66097e02cd7b.PNG)

Since the emotion sentimental outcome has combined with multiple different emotion scores, which is unclear and hard to understand whether more people are having more positive or negative views on #thebeatles, in order to understand the overall positive or negative sentiment of this hashtag, we have used another package (bing) to examine the dataset. 
The final output has shown there are twice more negative (4781) tweets compared to the positive (2005) ones.  

![17](https://user-images.githubusercontent.com/68969621/111229646-2e3e4980-85de-11eb-835a-ba8b7869190e.PNG)

According to this sentimental study, although TheBeatles is the top artist with the highest popularity between 1921- 2020 in Spotify API data, but not receiving high positive user engagements on Twitter, this outcome is contradicting initial findings. 

### Statistical Analysis on SPSS
In this analysis, we have selected three artists randomly from the entire dataset, which includes FrankSin, Pink Floyd, and TheBeatles to study if there’s any statistical significance amongst three artists over popularity.

*Descriptive Analysis*
According to the table below, the overall sample length of the artists is uneven, FrankSin has the largest, with 621 sets of sample, and Pink Floyd has the smallest, with 263 sets of sample only. 

![18](https://user-images.githubusercontent.com/68969621/111229761-66de2300-85de-11eb-8d3e-8134bdf1da60.PNG)

TheBeatles have the highest popularity mean value with 46.38 and FrankSin has the lowest with 28.07.

![19](https://user-images.githubusercontent.com/68969621/111229840-8ecd8680-85de-11eb-872d-7efdeb90ff79.PNG)
![20](https://user-images.githubusercontent.com/68969621/111229845-8ecd8680-85de-11eb-82ff-f1fa0d32b68d.PNG)
![21](https://user-images.githubusercontent.com/68969621/111229849-8f661d00-85de-11eb-9622-73ef912f83b6.PNG)
























Initially, the songs having low or high instrumental quality were not much popular. Over the period of time popularity of songs with higher instrumental quality increased and then recently in 2020 it again started decreasing.



Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the pages in your site, from the content in your Markdown files.

### Markdown

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/women-in-ai-ireland/January-2021-WaiLEARN-001/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://docs.github.com/categories/github-pages-basics/) or [contact support](https://github.com/contact) and we’ll help you sort it out.
