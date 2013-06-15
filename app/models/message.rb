class Message < ActiveRecord::Base

  attr_accessible :content, :list_id, :name, :type, :user_id

  belongs_to :list
  belongs_to :user

  def send_bulk
    list = self.list.recipient_lists.includes(:recipient).map {|recipient_list| recipient_list.recipient.number}
    Sms.send_sms(list,self.content)
  end


end
