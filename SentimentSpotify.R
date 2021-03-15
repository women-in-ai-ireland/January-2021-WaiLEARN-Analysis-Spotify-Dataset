## Packages to start
library(tidytext)
library(textdata)
library(readxl)
library(dplyr)
library(stringr)
library(tibble)
library(stringr)
library(ggplot2)
library(wordcloud)
#---
library(twitteR)
library(ROAuth)
library(xlsx)
library(tidyverse)
library(openxlsx)
library(rio)
library (rtweet)
library(openxlsx)


#get sentiments from seperate libraries
get_sentiments("afinn")
get_sentiments("bing")
get_sentiments("nrc")

getwd()
setwd("C:/Users/karin/Python/Spotify")

#twitter token
twitter_token <- create_token(
  app = "Thebeatles",
  consumer_key = "",
  consumer_secret = "",
  access_token = "",
  access_secret = "",
  set_renv = FALSE)

# Search @Thebeatles Globally 
Thebeatles <- search_tweets("Thebeatles", n=3000, include_rts=FALSE, retryonratelimit=TRUE, lang="en")

Thebeatlessub<- Thebeatles[c("user_id", "status_id", "created_at", "screen_name",
            "text", "favorite_count", "retweet_count","location", "verified")]

#into working df
Thebeatlessub<-twListToDF(Thebeatlessub)
View(Thebeatlessub)

--------------------------------------------------
  #Write into xlsx file 
  export(Thebeatlessub,"Thebeatlessub.xlsx")
###############################

#Read xlsx file

library(readxl)
Thebeatlessub <- read_excel("Thebeatlessub.xlsx")
View(Thebeatlessub)

#remove punchuation and other symbols from location
Thebeatlessub$location <-  gsub("https\\S*", "", Thebeatlessub$location)
Thebeatlessub$location <-  gsub("@\\S*", "", Thebeatlessub$location) 
Thebeatlessub$location  <-  gsub("amp", "", Thebeatlessub$location) 
Thebeatlessub$location  <-  gsub("[\r\n]", "", Thebeatlessub$location)
Thebeatlessub$location  <-  gsub("[[:punct:]]", "", Thebeatlessub$location)

#remove punchuation and other symbols from text
Thebeatlessub$text<-  gsub("https\\S*", "", Thebeatlessub$text)
Thebeatlessub$text <-  gsub("@\\S*", "", Thebeatlessub$text) 
Thebeatlessub$text  <-  gsub("amp", "", Thebeatlessub$text) 
Thebeatlessub$text  <-  gsub("[\r\n]", "", Thebeatlessub$text)
Thebeatlessub$text  <-  gsub("[[:punct:]]", "", Thebeatlessub$text)


##User location analysis
set.seed(1234)
wordcloud(Thebeatlessub$location, min.freq=4, scale=c(5, .5), random.order=FALSE, rot.per=0.3, 
          colors=brewer.pal(8, "Dark2"))

#216 unique locations
unique(Thebeatlessub$location)

#graph has added the function to show n number of locations, in this case 20
Thebeatlessub %>%
  count(location, sort = TRUE) %>%
  mutate(location = reorder(location, n)) %>%
  top_n(20) %>%
  ggplot(aes(x = location, y = n)) +
  geom_col() +
  coord_flip() +
  labs(x = "Location",
       y = "Count",
       title = "Top 20 locations")


#############################################################################
#                    list of tweets by verified users                       #
#############################################################################

Verifieddata <- Thebeatlessub %>% 
  select(verified) %>% 
  group_by(verified) %>%
  summarize(count=n())
Verifieddata <- subset(Verifieddata, count > 11)

data <- data.frame(
  category=Thebeatlessub$verified,
  count=Verifieddata$count
)

####3569 accounts not verified , 69 verified accounts only ####Total n= 3638
# Verified users (True = Verified at 1.01%/  False= Not Verified at 98.99%)


##Review tweet messages 
verifiedTweets <- cbind(Thebeatlessub$verified, Thebeatlessub$text, Thebeatlessub$location)
View(verifiedTweets)

### 

#####Sentiment####

library(Rstem)
library(sentiment)
library(plotly)
library(dplyr)
library(wordcloud)
library(tm)
library(syuzhet)
library(plotly)
library(tm)
library(wordcloud)
#--------------------------

# build a corpus, and specify the source to be character vectors
myCorpus <- Corpus(VectorSource(Thebeatlessub$text))
# convert to lower case
myCorpus <- tm_map(myCorpus, content_transformer(tolower))
# remove URLs
removeURL <- function(x) gsub("http[^[:space:]]*", "", x)
myCorpus <- tm_map(myCorpus, content_transformer(removeURL))
# remove anything other than English letters or space
removeNumPunct <- function(x) gsub("[^[:alpha:][:space:]]*", "", x)
myCorpus <- tm_map(myCorpus, content_transformer(removeNumPunct))
# remove stopwords
myStopwords <- c(setdiff(stopwords('english'), c("r", "big")),
                 "use", "see", "used", "via", "amp")
myCorpus <- tm_map(myCorpus, removeWords, myStopwords)
# remove extra whitespace
myCorpus <- tm_map(myCorpus, stripWhitespace)
# keep a copy for stem completion later
myCorpusCopy <- myCorpus

myCorpus <- tm_map(myCorpus, stemDocument) # stem words

###Worldcloud generated from hashtag # 'Thebeatles' 
wordcloud(myCorpus, min.freq=4, scale=c(5, .5), random.order=FALSE, rot.per=0.3, 
          colors=brewer.pal(8, "Dark2"))

      


myCorpus<-as.character(myCorpus)
beatles_sentiment<-get_nrc_sentiment(myCorpus)
sentimentscores<-data.frame(colSums(beatles_sentiment[,]))
names(sentimentscores) <- "Score"
sentimentscores <- cbind("sentiment"=rownames(sentimentscores),sentimentscores)
rownames(sentimentscores) <- NULL
###generate the 
library(ggplot2)
ggplot(data=sentimentscores,aes(x=sentiment,y=Score))+
  geom_bar(aes(fill=sentiment),stat = "identity")+
  theme(legend.position="none")+
  xlab("Sentiments")+ylab("Scores")+
  ggtitle("Total sentiment based on scores")+
  theme_minimal()


###Sentimeantal analysis-  Positive / Negative 
beatles_sentiment<-get_sentiments("bing") %>% 
  count(sentiment)

###  sentiment     n
##  1 negative   4781
##  2 positive   2005


