class Api::V1::ListingsController < ApplicationController
  def index
    @listings = Listing.all

    render json: @listings
  end

  def create
    @listing = Listing.create(listing_params)

    if @listings
      render json: @listing
    else
      render json: { error: "Failed to create listings"}, status: 400
    end
  end

  private
    def listing_params
      params.require(:listing).permit(:position, :company, :company_url, :apply_url, :type, :experience_level, :compensation, :street, :city, :state, :zipcode, :programming_languages, :description)
    end
end
