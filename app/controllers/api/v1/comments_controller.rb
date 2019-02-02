class Api::V1::CommentsController < ApplicationController

  def index
    comments = Comment.all
    render json: comments
  end

  def show
    comment = Comment.find(params[:id])
    render json: comment
  end

  def create
    @comment =  Comment.new(comment_params)
    if @comment.save
      render json: @comment, status: 201
    else
      render json: @comment.errors.messages, status: 400
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      render json: { status: 200, msg: 'Comment has been deleted.' }
    end
  end

  private

  def comment_params
    params.permit(:content, :user_id, :skate_spot_id)   #These must be included in the body of the POST or PATCH requests we will be making with JS fetch.
  end

end
