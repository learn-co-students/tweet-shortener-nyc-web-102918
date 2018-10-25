def dictionary(tweet)
  dictionary_hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4",
    "For" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  dictionary_keys = dictionary_hash.keys
  tweet_array = tweet.split
  new_word = ""
  edited_tweet_ary = []
  tweet_array.each do |word|
    if dictionary_keys.include?(word)
      new_word = dictionary_hash[word]
      edited_tweet_ary << new_word
    else
      edited_tweet_ary << word
    end
  end
  edited_tweet = edited_tweet_ary.join(" ")
  edited_tweet
end

def word_substituter(tweet)
  shorter_tweet = dictionary(tweet)
  shorter_tweet
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length < 140
    return tweet
  else
    shortened_tweet = word_substituter(tweet)
  end
  if shortened_tweet.length < 140
    return shortened_tweet
  else
    truncated_tweet = shortened_tweet[0..136] + "..."
  end
  truncated_tweet
end
