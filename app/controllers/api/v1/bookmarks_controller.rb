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
    @bookmark =  Bookmark.new(post_params)
    if @bookmark.save
      render json: @bookmark, status: 201
    else
      render json: @bookmark.errors.messages, status: 400
    end

  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.destroy
      render json: { status: 200, msg: 'Spot has been unbookmarked.' }
    end
  end

  private

  def bookmark_params
    params.permit(:user_id, :skate_spot_id)   #These must be included in the body of the POST or PATCH requests we will be making with JS fetch.
  end

end
