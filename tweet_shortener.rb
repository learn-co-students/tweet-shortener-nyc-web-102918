# Write your code here.
require "pry"

def dictionary
  words = {"hello" => 'hi', "to" => '2', "two" => "2", "too" => '2',
            "for" => "4", "four" => '4', "be" => 'b',
            "you" => 'u', "at" => "@", "and" => "&"}
end

def word_substituter(string)
  temp_arr = string.split(" ")
  temp_arr.each_index do |i|
    if dictionary.has_key?(temp_arr[i].downcase)
      temp_arr[i] = dictionary[temp_arr[i].downcase]
    end

  end
  final_str = temp_arr.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
      word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = ""
  new_tweet = selective_tweet_shortener(tweet)
  if new_tweet.length > 140
    while new_tweet.length > 140
      new_tweet.chop!
    end
  end
  new_tweet
end
