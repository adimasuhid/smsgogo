class Recipient < ActiveRecord::Base
  attr_accessible :number

  has_many :recipient_lists, :dependent => :destroy

  validates :number, uniqueness: true, presence: true 

  def self.save_details(numbers)
    recipients = []
    numbers.each do |num|
      #search if recipient exists
      recipient = Recipient.where(number:num[0]).first
      recipient ||= Recipient.create!(number:num[0])
      recipients << recipient.id
    end
  end
end
