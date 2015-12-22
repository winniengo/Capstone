class RemoveListingsPlaceId < ActiveRecord::Migration
  def change
    remove_column :listings, :placeId
  end
end
