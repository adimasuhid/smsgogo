class Recipient < ActiveRecord::Base
  attr_accessible :number

  has_many :recipient_lists, :dependent => :destroy

  validates :number, uniqueness: true, presence: true 
end
