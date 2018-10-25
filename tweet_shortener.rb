

def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2", "two" => "2", "too" => "2",
    "four" => "4", "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  tweet_array.each_index do |i|
    if dictionary.has_key?(tweet_array[i].downcase)
      tweet_array[i] = dictionary[tweet_array[i].downcase]
      end
    end
  return tweet_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
   puts word_substituter(tweet)
 end
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else tweets.length < 130
    tweet
  end
end


def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + "..."
  else
    tweet
  end
end
