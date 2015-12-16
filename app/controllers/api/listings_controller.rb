class Api::ListingsController < ApplicationController
  def create
    listing = Listing.create!(listing_params)
    render json: listing
  end

  private

  def listing_params
    params.require(:listing).permit(
      :address,
      :lat,
      :lng,
      :placeId,
      :rent,
      :bedrooms,
      :bathrooms,
      :description,
      :type,
      :date_posted
    )
  end
end
