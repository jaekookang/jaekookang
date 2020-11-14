# Taken from Zhiiiyang
# Source: https://github.com/zhiiiyang/zhiiiyang/blob/master/script.R

library(tweetrmd)
library(rtweet)

# Add secret environment variables at GitHub
lasttweet_token <- function() {
  create_token(
    "get-latest-tweet-jkang",
    consumer_key = Sys.getenv("CONSUMER_KEY"),
    consumer_secret = Sys.getenv("CONSUMER_SECRET"),
    access_token = Sys.getenv("ACCESS_TOKEN"),
    access_secret = Sys.getenv("ACCESS_SECRET"),
    set_renv = FALSE
  )
}

# Specify your twitter ID
handle <- "JKOO85823449"
recent_tweets <- get_timeline(handle, n = 1, token = lasttweet_token())

tmpimg <- "tweet.png"
tweet_screenshot(
  tweet_url(handle, recent_tweets$status_id),
  scale = 5, 
  maxwidth = 600,
  theme = "light",
  file = tmpimg
)
