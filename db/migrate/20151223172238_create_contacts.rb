class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :email, null: false
      t.string :phone, null: false
      t.string :name
      t.boolean :verified, default: false

      t.timestamps null: false
    end

    add_index :contacts, :email, unique: true
  end
end
