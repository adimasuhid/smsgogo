class ListsController < ApplicationController
  def index
    @list = current_user.lists.new
  end

  def create
    @list = current_user.lists.new params[:list]

    if @list.save
      numbers = @list.parse_csv

      recipient_ids = Recipient.save_details @numbers
      
      #create_recipient_lists
      recipient_ids.each do |rec|
        @list.recipient_lists.create!(recipient_id: rec)
      end

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
