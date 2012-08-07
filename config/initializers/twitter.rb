require 'twitter'

twitter_config = YAML.load(File.read(Rails.root.join('config', 'twitter.yml')))[Rails.env]

Twitter.configure do |config|
  config.consumer_key = "mwizTAb2cQi3XqPwRUrGow"
  config.consumer_secret = "0HstUpQtU8A857sazjMv9dl7SXq0TcMlGxaNtMeyI"
  config.oauth_token = twitter_config['oauth_token']
  config.oauth_token_secret = twitter_config['oauth_token_secret']
end