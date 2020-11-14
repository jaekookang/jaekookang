# Taken from Zhiiiyang
# Source: https://github.com/zhiiiyang/zhiiiyang/blob/master/script.R

library(tweetrmd)
library(rtweet)

lasttweet_token <- function() {
  create_token(
    "get-last-tweet",
    consumer_key = Sys.getenv("CONSUMER_KEY"),
    consumer_secret = Sys.getenv("CONSUMER_SECRET"),
    access_token = Sys.getenv("ACCESS_TOKEN"),
    access_secret = Sys.getenv("ACCESS_SECRET"),
    set_renv = FALSE
  )
}

handle <- "jaekookang"
recent_tweets <- get_timeline(handle, n = 1, token = lasttweet_token())

tmpimg <- "tweet.png"
tweet_screenshot(
  tweet_url(handle, recent_tweets$status_id),
  scale = 5, 
  maxwidth = 600,
  theme = "light",
  file = tmpimg
)