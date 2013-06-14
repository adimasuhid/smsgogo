class AddCsvUrlToList < ActiveRecord::Migration
  def change
    add_column :lists, :csv_url, :string
  end
end
