#require 'pry'

def dictionary
  dictionary = {
"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2',
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&",
}
end



# "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
#
# "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"
#
# "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."
#
# "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"
#
# "New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag"

def word_substituter(tweet_one)
  tweet_one_array = tweet_one.split(" ")

  i = 0
  while i < tweet_one_array.length
    dictionary.each do |key, value|
      if tweet_one_array[i] == key || tweet_one_array[i] == key.capitalize # downcase also works. do not miss [i]
        tweet_one_array[i] = value
      end
    end
    i += 1
  end
  tweet_one_array.join(" ")
end

#bulk_tweet_shortener
def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)

    if tweet.length > 140   #space is counted as a charactor. no need tweet.split(" ").join.length
      word_substituter(tweet)
    else
      tweet
    end
#binding.pry
end


def shortened_tweet_truncator(tweet)
  sub_tweet = ""

  if tweet.length > 140
    sub_tweet = word_substituter(tweet)
    if sub_tweet.length > 140
      sub_tweet[0..136] + "..."
    else
      sub_tweet
    end
  else
    tweet
  end

end
