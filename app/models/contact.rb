class Contact < ActiveRecord::Base
  validates :email, :phone, :verified, presence: true

  has_many :listings,
    dependent: :destroy
end
