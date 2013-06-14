class ListsController < ApplicationController
  def index
    @list = current_user.lists.new
  end

  def step2
    @list = current_user.lists.new params[:list]
  end

  def step3
    @list= current_user.lists.new params[:list]
  end
end
