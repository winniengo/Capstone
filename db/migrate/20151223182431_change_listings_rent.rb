class ChangeListingsRent < ActiveRecord::Migration
  def change
    change_column :listings, :rent, :integer
  end
end
