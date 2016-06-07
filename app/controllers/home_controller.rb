class HomeController < ApplicationController


  def show
    
  end

  def start
    puts ("im in the controller")
    connection=Adapter::Twitter.new()
    connection.track("trump")

  end

end