class Api::V1::BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
    render json: @bookmarks
  end

  def show
    @bookmark = Bookmark.find(params[:id])
    render json: @bookmark
  end

  def create
    @bookmark = Bookmark.create(post_params)
    render json: @bookmark, status: 201
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.destroy
      render json: { status: 200, msg: 'Spot has been unbookmarked.' }
    end
  end

  private

  def post_params
    params.permit(:skate_spot_id, :user_id)   #These must be included in the body of the POST or PATCH requests we will be making with JS fetch.
  end

end
