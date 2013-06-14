class List < ActiveRecord::Base
  attr_accessible :name, :user_id

  has_many :recipient_lists
  belongs_to :user
end
