def dictionary
  dictionary1 ={"hello" => 'hi',
"to" => "2", "two" => "2", "too" => '2',
"for" => "4", "four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&"}
end
def word_substituter(tweet)
  tweet.split(" ").map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
    end
  end.join(" ")
end
def bulk_tweet_shortener(tweet)
  tweet.map do |words|
    puts word_substituter(words)
  end
end
def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    elsif tweet.size <= 140
      tweet
    end
end
def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
  word_substituter(tweet)[0..136]+("...")
else
  word_substituter(tweet)
end
end
# Write your code here.
#This one was a toughy!
