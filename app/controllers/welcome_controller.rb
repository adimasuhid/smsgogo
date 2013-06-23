class WelcomeController < ApplicationController
  def index
    @active = "root"
    @contact = ContactUs.new
    @user = User.new
  end

end
