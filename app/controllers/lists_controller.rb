class ListsController < ApplicationController
  def index
    @list = current_user.lists.new
  end

  def create
    @list = current_user.lists.new params[:list]

    if @list.save
      recipients = []

      numbers = @list.parse_csv

      #create_recipients
      numbers.each do |num|
        #search if recipient exists
        recipient = Recipient.where(number:num[0]).first
        recipient ||= Recipient.create!(number:num[0])
        recipients << recipient.id
      end
      
      #create_recipient_lists
      recipients.each do |rec|
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
