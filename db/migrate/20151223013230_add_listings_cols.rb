class AddListingsCols < ActiveRecord::Migration
  def change
    add_column :listings, :min_lease, :integer, null: false
    add_column :listings, :deposit, :integer, null: false
    add_column :listings, :fee, :boolean, default: false
    add_column :listings, :parking, :boolean, default: false
    add_column :listings, :cats, :boolean, default: false
    add_column :listings, :dogs, :boolean, default: false
    add_column :listings, :contact_id, :integer, null: false
    add_index :listings, :contact_id
  end

end
