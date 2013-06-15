class Recipient < ActiveRecord::Base
  attr_accessible :number

  has_many :recipient_lists, :dependent => :destroy
end
