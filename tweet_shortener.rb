# Write your code here.
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split(" ").map do |str|
    dictionary[str.downcase] || str
  end.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length <= 140 ? tweet : word_substituter(tweet)
end

def shortened_tweet_truncator(tweet)
  tweet.length > 140 ? tweet[0...137] + "..." : tweet
end