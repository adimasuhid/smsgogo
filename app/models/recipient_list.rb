class RecipientList < ActiveRecord::Base
  attr_accessible :list_id, :recipient_id, :recipient

  belongs_to :list
  belongs_to :recipient
end
