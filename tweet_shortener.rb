# Write your code here.
def dictionary
  dict = {
    "hello" => 'hi',
    "to"=> "2",
    "too"=> "2",
    "two" => "2",
    "for"=>"4",
    "four" => "4",
    "For"=>"4",
    "Four" => "4",
    'be' => "b",
    'you'=> "u",
    "at" =>"@",
    "and" => "&",
    }
end

def word_substituter(str)
  dict = dictionary()
  words = str.split(" ")

  words.map do |word|
    dict.map do |key, value|
      if word == key
        word.replace(value)
      end
    end
  end
  words.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |item|
    puts word_substituter(item)
  end
end

def selective_tweet_shortener(str)
  if str.length > 140
    word_substituter(str)
  else
    str
  end
end

def shortened_tweet_truncator(str)
  if word_substituter(str).chars.length > 140
     word_substituter(str).chars[0..136].push("...").join("")
  else
    word_substituter(str)
  end
end
