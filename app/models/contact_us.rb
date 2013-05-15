class ContactUs < ActiveRecord::Base
  attr_accessible :country, :email, :message, :name, :phone
  validates :name,:email,:message, presence: true
end
