class Image < ActiveRecord::Base
  validates :listing_id, :source, presence: true

  belongs_to :listing
end
