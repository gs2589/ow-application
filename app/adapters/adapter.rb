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



    def track()
      crisis_hash={} 
      Crisis.all.each {|crisis| crisis_hash[crisis.id]={keywords: crisis.keywords, tweet_number: 0, last_n_rates: [0,0,0,0,0,0,0,0,0,0], average_rate:0 }}
      keywords=[]
      crisis_hash.each{|crisis, data| keywords=keywords+ data[:keywords]}
      start_time=Time.now
      sampling_rate=1  #seconds
      TweetStream::Client.new.track(keywords) do |status|
         crisis_hash.each{|crisis, data| data[:tweet_number]+=1 if data[:keywords].any? {|word| status.text.downcase.include?(word)}}
         finish_time=Time.now
          #puts("this is a tweet:" + status.text)
          #puts(finish_time-start_time)
          #puts("TWEET NUMBER:" + tweet_number.to_s)
        if finish_time-start_time>sampling_rate
          elapsed_time=finish_time-start_time
          crisis_hash.each{|crisis, data| 
            rate=60*data[:tweet_number]/elapsed_time
            data[:last_n_rates].push(rate)
            data[:last_n_rates].shift
            data[:average_rate]=data[:last_n_rates].inject(0){|sum,x| sum + x }/data[:last_n_rates].length
            data[:tweet_number]=0
          }
          start_time=Time.now 
          #crisis_hash.each{|crisis, data| puts("Crisis Number: #{crisis} had a rate of #{data[:average_rate]}")} 
           ActionCable.server.broadcast 'data',
           #text: status.text,
           rate_array: crisis_hash.map{|crisis, data| data[:average_rate]}
        end
      end
    end
  end
end