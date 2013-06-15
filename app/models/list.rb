require 'csv'
class List < ActiveRecord::Base
  attr_accessible :name, :user_id, :csv_url, :opt_in_kw, :opt_out_kw, 
    :opt_in_confirmation, :opt_out_confirmation, :opt_error, :filename

  has_many :recipient_lists, :dependent => :destroy
  has_many :messages
  belongs_to :user

  def parse_csv
    begin
      response = RestClient.get self.csv_url
      result = CSV.parse response, :headers => false
    rescue
      puts "error"
    end

  end
end
