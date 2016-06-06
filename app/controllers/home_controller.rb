class HomeController < ApplicationController


  def show
    render :show
    
    
  end

  def start
    connection=Adapter::Twitter.new()
    connection.track("trump")

  end

end