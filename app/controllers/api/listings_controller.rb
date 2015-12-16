class Api::ListingsController < ApplicationController
  def create
    debugger
    listing = Listing.create!(listing_params)
    render json: listing
  end

  def index
    @listings = Listing.all
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
      :listing_type,
      :date_posted
    )
  end
end
