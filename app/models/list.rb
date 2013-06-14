class List < ActiveRecord::Base
  attr_accessible :name, :user_id, :csv_url, :opt_in_kw, :opt_out_kw, 
    :opt_in_confirmation, :opt_out_confirmation, :opt_error

  has_many :recipient_lists
  belongs_to :user
end
