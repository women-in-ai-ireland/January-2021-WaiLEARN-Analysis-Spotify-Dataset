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
