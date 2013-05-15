class UsersController < ApplicationController
  def create
    @user = User.new params[:user]
    if @user.save
      redirect_to pricing_path, flash: {:success => "Message"}
    else
      redirect_to pricing_path, flash: {:success => "Error"}
    end
  end
end
