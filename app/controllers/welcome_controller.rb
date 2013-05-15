class WelcomeController < ApplicationController
  def index
    @active = "root"
  end

  def about
    @active = "about"
  end

  def pricing
    @active = "pricing"
    @user = User.new
  end
  
end
