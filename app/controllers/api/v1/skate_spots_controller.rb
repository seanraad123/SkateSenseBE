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
    byebug
    @skate_spot =  SkateSpot.new(post_params)
    if @skate_spot.save
      render json: @skate_spot, status: 201
    else
      render json: @skate_spot.errors.messages, status: 400
    end
  end

  def destroy
    @skate_spot = SkateSpot.find(params[:id])
    if @skate_spot.destroy
      render json: {status: "success", code: 201, message: "Skate Spot deleted"}
    else
      render json: {status: "error", code: 3000, message: "Error deleting skate spot"}
    end
  end



  private

  def post_params
    params.permit(:country, :city, :state, :name, :description, {skatephotos:[]}, :latitude, :longitude, :bust_factor, :user_id)   #These must be included in the body of the POST or PATCH requests we will be making with JS fetch.
  end

end
