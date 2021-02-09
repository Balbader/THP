class StaticController < ApplicationController
  def index
    @random_number = rand(10000)
    @user = User.first
  end

  def index_post
    puts "Hello from the server "
    user = User.new
    user.first_name = params["first_name"]
    user.last_name = params["last_name"]
    user.save
    puts "The End"
  end
end
