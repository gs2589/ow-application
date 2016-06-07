class HomeController < ApplicationController


  def show
    
  end

  def start
    render :show
    connection=Adapter::Twitter.new()
    connection.track("trump")

  end

end