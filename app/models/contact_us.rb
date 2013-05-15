class ContactUs < ActiveRecord::Base
  attr_accessible :country, :email, :message, :name, :phone
end
