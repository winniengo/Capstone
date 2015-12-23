class Api::ListingsController < ApplicationController
  def index
    @listings = Listing.all()
    @listings = Listing.filter(params).includes(:images)
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def create
    listing = Listing.create!(listing_params)

    if listing.save
      render :show
    else
      render json: listing.errors.full_messages, status: 422
    end
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
