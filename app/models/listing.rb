class Listing < ActiveRecord::Base
  validates :address, :lat, :lng, presence: true
  validates :rent, :bedrooms, :bathrooms, :description, :listing_type, :date_posted, presence: true
  validates :min_lease, :deposit, :contact_id, presence: true

  validates :lat, :lng, :bathrooms, numericality: true
  validates :rent, :bedrooms, :min_lease, :deposit, numericality: { only_integer: true }

  validates :listing_type, inclusion: { in: ['lease', 'sublet'] }

  validates :lat, uniqueness: { scope: :lng }
  validates :address, uniqueness: true

  belongs_to :contact

  has_many :images,
    dependent: :destroy

  def self.filter(params)
    self.where("lat < ?", params["bounds"]["northEast"]["lat"])
        .where("lat > ?", params["bounds"]["southWest"]["lat"])
        .where("lng > ?", params["bounds"]["southWest"]["lng"])
        .where("lng < ?", params["bounds"]["northEast"]["lng"])
        .where("rent >= ?", params["rent"]["min"])
        .where("rent <= ?", params["rent"]["max"])
        .where("bathrooms >= ?", params["bathrooms"]["min"])
        .where("bathrooms <= ?", params["bathrooms"]["max"])
        .where("bedrooms >= ?", params["bedrooms"]["min"])
        .where("bedrooms <= ?", params["bedrooms"]["max"])
        .where(listing_type: params["listing_type"])
  end
end
