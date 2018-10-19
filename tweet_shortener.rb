# Write your code here.
require "pry"
def dictionary 
  sub_list = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
 array_tweet =  tweet.split(" ")
 short_array_tweet = []
 
 array_tweet.each do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
      short_array_tweet << word
    else
      short_array_tweet << word
    end
 end

 return short_array_tweet.join(" ")
end


def bulk_tweet_shortener(bulk_tweets)
  bulk_tweets.each do |bulk_tweet|
    puts word_substituter(bulk_tweet)
 end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else 
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    short_tweet = word_substituter(tweet)
    if short_tweet.length > 140
      return short_tweet[0..136] + "..."
    else 
      return short_tweet 
    end
  else 
    return tweet
  end
end