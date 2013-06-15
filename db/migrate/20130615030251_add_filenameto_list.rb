class AddFilenametoList < ActiveRecord::Migration
  def change
    add_column :lists, :filename, :string
  end
end
