require 'twitter'
require 'dotenv'

Dotenv.load('../.env')

def hello_journalists
  arr = ["@jcunniet", "@Aziliz31","@ssoumier","@marionsouzeau","@gaellombart","@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon","@stephanieauguy","@claw_prolongeau","@_JulieMenard","@LColcomb","@Zlauwereys","@MeLonguet","@DorotheeLN"]
  random = arr.sample(5)
  tweets = []
  i = 0
  j = 0
  while i < 5
    return tweets[j] = "Hello, #{random[i]}! Just testing here ^^"
    i += 1
    j += 1
  end
end

def twitter_login
client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
    config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
    config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
  end
end

twitter_login.update(hello_journalists)
