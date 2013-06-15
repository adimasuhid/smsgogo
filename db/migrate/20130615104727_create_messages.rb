class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.text :content
      t.integer :type
      t.integer :list_id

      t.timestamps
    end
  end
end
