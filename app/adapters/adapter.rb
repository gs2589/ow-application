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
      puts("im in the tracker")
      last_n_rates=[0,0,0,0,0,0,0,0,0,0]
      keyword=keyword
      tweet_number=0
      start_time=Time.now
      sampling_rate=1  #seconds
      puts(TweetStream::Client.new.track(keyword) do |status|
         tweet_number+=1
         finish_time=Time.now
          puts(status.text)
          puts(finish_time-start_time)
         # puts("TWEET NUMBER:" + tweet_number.to_s)
        if finish_time-start_time>sampling_rate
          rate=60*tweet_number/(finish_time-start_time)
          last_n_rates.push(rate)
          last_n_rates.shift
          average_rate=last_n_rates.inject(0){|sum,x| sum + x }/last_n_rates.length
          start_time=Time.now
          tweet_number=0
          ActionCable.server.broadcast 'data',
          text: status.text,
          rate: average_rate
        end
      end)

    end

end



end