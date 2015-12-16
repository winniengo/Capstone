class ChangeListingsBathrooms < ActiveRecord::Migration
  def change
    change_column :listings, :bathrooms, :float
  end
end
