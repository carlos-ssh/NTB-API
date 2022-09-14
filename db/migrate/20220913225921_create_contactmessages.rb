class CreateContactmessages < ActiveRecord::Migration[7.0]
  def change
    create_table :contactmessages do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, null: false, unique: true
      t.string :phone
      t.text :message, limit: 700

      t.timestamps
    end
  end
end
