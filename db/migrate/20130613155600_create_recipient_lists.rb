class CreateRecipientLists < ActiveRecord::Migration
  def change
    create_table :recipient_lists do |t|
      t.integer :recipient_id
      t.integer :list_id

      t.timestamps
    end
  end
end
