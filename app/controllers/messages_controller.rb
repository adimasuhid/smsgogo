class MessagesController < ApplicationController
  def index
    @message_types = ["Outbound","Response","Survey","Profile Capture", "Lead Gen", "Email Response"]
  end

  def step2
    @message = current_user.messages.new
  end

  def step3
    @message = current_user.messages.new params[:message]
    @lists = current_user.lists.map { |list| [list.name, list.id]}
  end

  def step4
    @message = current_user.messages.new params[:message]
    @list = List.find params[:message][:list_id]
  end

  def create
    @message = current_user.messages.new params[:message]

    if @message.save
      @message.send_bulk
      redirect_to messages_path, :flash => {success: "You have successfully sent Message #{@message.name}!"}
    end

  end
end
