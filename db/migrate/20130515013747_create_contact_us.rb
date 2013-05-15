class CreateContactUs < ActiveRecord::Migration
  def change
    create_table :contact_us do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :country
      t.text :message

      t.timestamps
    end
  end
end
