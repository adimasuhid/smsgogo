class ListsController < ApplicationController
  def index
    @list = current_user.lists.new
  end

  def create
    @list = current_user.lists.new params[:list]
    #process parsing

    if @list.save
      redirect_to lists_path, :flash => {success: "You have successfully added List #{@list.name}!"}
    end
  end

  def step2
    @list = current_user.lists.new params[:list]
  end

  def step3
    @list= current_user.lists.new params[:list]
  end
end
