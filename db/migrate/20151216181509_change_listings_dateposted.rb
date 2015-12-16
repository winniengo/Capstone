class ChangeListingsDateposted < ActiveRecord::Migration
  def change
    change_column :listings, :date_posted, :date
  end
end
