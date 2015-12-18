class Listing < ActiveRecord::Base
  validates :address, :lat, :lng, :placeId, presence: true
  validates :rent, :bedrooms, :bathrooms, :description, :listing_type, :date_posted, presence: true

  validates :lat, :lng, :rent, :bathrooms, numericality: true
  validates :bedrooms, numericality: { only_integer: true }

  validates :listing_type, inclusion: { in: ['lease', 'sublet'] }

  validates :lat, uniqueness: { scope: :lng }
  validates :address, :placeId, uniqueness: true

  # def self.in_bounds(bounds)
  #   self.where("lat < ?", bounds["northEast"]["lat"])
  #       .where("lat > ?", bounds["southWest"]["lat"])
  #       .where("lng > ?", bounds["southWest"]["lng"])
  #       .where("lng < ?", bounds["northEast"]["lng"])
  # end

  def self.filter(params)
    self.where("lat < ?", params["bounds"]["northEast"]["lat"])
        .where("lat > ?", params["bounds"]["southWest"]["lat"])
        .where("lng > ?", params["bounds"]["southWest"]["lng"])
        .where("lng < ?", params["bounds"]["northEast"]["lng"])
        .where("rent >= ?", params["rent"]["min"].to_f)
        .where("rent <= ?", params["rent"]["max"].to_f)
        .where("bathrooms >= ?", params["bathrooms"]["min"].to_f)
        .where("bathrooms <= ?", params["bathrooms"]["max"].to_f)
        .where("bedrooms >= ?", params["bedrooms"]["min"].to_f)
        .where("bedrooms <= ?", params["bedrooms"]["max"].to_f)
  end
end
