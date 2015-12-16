class Api::ListingsController < ApplicationController
  def create
    listing = Listing.create!(listing_params)
    render json: listing
  end

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
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
