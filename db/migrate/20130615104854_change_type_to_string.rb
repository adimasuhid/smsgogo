class ChangeTypeToString < ActiveRecord::Migration
  def change
    change_column :messages, :type, :string
  end
end
