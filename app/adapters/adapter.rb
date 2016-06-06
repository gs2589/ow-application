module Adapter
  class Twitter


    def initialize()

      TweetStream.configure do |config|
      config.consumer_key       = ENV["consumer_key"]
      config.consumer_secret    = ENV["consumer_secret"]
      config.oauth_token        = ENV["access_token"]
      config.oauth_token_secret = ENV["access_token_secret"]
      config.auth_method        = :oauth
      end
    end



    def track(keyword)

      string=""
      TweetStream::Client.new.track(keyword) do |status|

        ActionCable.server.broadcast 'data',
        text: status.text,
        keywords: keyword
      head :ok

      end

    end

end

end