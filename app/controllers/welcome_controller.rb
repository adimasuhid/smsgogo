class WelcomeController < ApplicationController
  def index
    @active = "root"
    @contact = ContactUs.new
    @user = User.new
  end

  def about
    @active = "about"
  end

  def pricing
    @active = "pricing"
    @user = User.new
  end
  
end
