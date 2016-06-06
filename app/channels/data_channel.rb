class DataChannel < ApplicationCable::Channel  

   def subscribed
    stream_from 'data'
  end

end  