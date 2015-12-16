class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address, null: false
      t.float :lat, null: false
      t.float :lng, null: false
      t.string :placeId, null: false

      t.float :rent, null: false
      t.integer :bedrooms, null: false
      t.integer :bathrooms, null: false
      t.string :description, null: false
      t.string :type, null: false
      t.datetime :date_posted, null: false

      t.timestamps null: false
    end

    add_index :listings, :date_posted
    add_index :listings, :placeId, unique: true
    add_index :listings, :address, unique: true
    add_index :listings, [:lat, :lng], unique: true
  end
end
