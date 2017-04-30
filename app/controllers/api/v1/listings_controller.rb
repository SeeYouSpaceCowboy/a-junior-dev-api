class Api::V1::ListingsController < ApplicationController
  def index
    @listings = Listing.all

    render json: @listings
  end

  def create
    @listing = Listing.create(listing_params)

    if @listing
      render json: @listing
    else
      render json: { error: "Failed to create listing"}, status: 400
    end
  end

  private
    def listing_params
      params.require(:listing).permit(:position, :company, :company_url, :apply_url, :shift, :experience_level, :compensation, :street, :city, :state, :zipcode, :programming_languages, :description)
    end
end
