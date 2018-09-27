class Api::V1::LikesController < ApplicationController

  def index
    @likes = Like.all
    render json: @likes
  end

  def show
    @like = Like.find(params[:id])
    render json: @like
  end

  def create
    @like = Like.create(post_params)
    render json: @like, status: 201
  end

  def destroy
    @like = Like.find(params[:id])
    if @like.destroy
      render json: { status: 200, msg: "Spot #{@like.id} has been unliked." }
    end
  end

  private

  def post_params
    params.permit(:skate_spot_id, :user_id)   #These must be included in the body of the POST or PATCH requests we will be making with JS fetch.
  end

end
