class Api::V1::SkateSpotsController < ApplicationController

  def index
    @skate_spots = SkateSpot.all
    render json: @skate_spots
  end

  def show
    @skate_spot = SkateSpot.find(params[:id])
    render json: @skate_spot
  end

  def create
    @skate_spot = SkateSpot.create(post_params)
    render json: @skate_spot, status: 201
  end

  private

  def post_params
    params.permit(:country, :city, :state, :name, :description, :skatephoto, :latitude, :longitude, :bust_factor, :user_id)   #These must be included in the body of the POST or PATCH requests we will be making with JS fetch.
  end

end
