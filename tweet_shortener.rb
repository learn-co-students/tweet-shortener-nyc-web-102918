# Write your code here.
def dictionary
  dictionary= {
    "hello"=>"hi",
    "to" => "2",
    "two" => "2",
    "too" =>"2",
    "for" => "4",
    "four" => "4",
    "be"=> "b",
    "you"=> "u",
    "at" => "@",
    "and" => "&",
  }
end

def word_substituter(tweet)
	words_to_be_shortened = tweet.split.collect do |word|
		if dictionary.keys.include?(word.downcase)
			word = dictionary[word.downcase]
		else
			word
		end
	end
	words_to_be_shortened.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet_one)
  if tweet_one.length >= 140
   bulk_tweet_shortener(tweets)
 elsif tweet_one.length <= 140
    tweet_one
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + ("...")
  else
    word_substituter(tweet)
  end
end
