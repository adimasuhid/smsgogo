class AddKeywordsToList < ActiveRecord::Migration
  def change
    add_column :lists, :opt_in_kw, :string
    add_column :lists, :opt_out_kw, :string
    add_column :lists, :opt_in_confirmation, :text
    add_column :lists, :opt_out_confirmation, :text
    add_column :lists, :opt_error, :text
  end
end
