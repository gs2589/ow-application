class HomeController < ApplicationController


  def show
    @crises=Crisis.all
    
  end

  def start
    connection=Adapter::Twitter.new()
    connection.track("trump")
  end

end