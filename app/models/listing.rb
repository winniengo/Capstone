class Listing < ActiveRecord::Base
  validates :address, :lat, :lng, :placeId, presence: true
  validates :rent, :bedrooms, :bathrooms, :description, :type, :date_posted, presence: true

  validates :lat, :lng, :rent, :bathrooms, numericality: true
  validates :bedrooms, numericality: { only_integer: true }

  validates :lat, uniqueness: { scope: :lng }
  validates :address, :placeId, uniqueness: true
end
