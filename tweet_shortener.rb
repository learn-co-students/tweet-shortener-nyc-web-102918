def dictionary 
  replace = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "be" => "b"
  }
end

def word_substituter(tweet_string)
    tweet_string.split(" ").collect do |i|
      if dictionary.keys.include?(i)
        i = dictionary[i]
      else
        i
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.collect do |i|
    puts word_substituter(i)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140 ? word_substituter(tweet) : tweet
  end
end

def shortened_tweet_truncator(tweets)
  tweets = tweets[0..140] + '...' if tweets.length > 140
  tweets
end