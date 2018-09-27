class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users, status: 201
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: 201
  end

  def create
    @user = User.create(post_params)
    render json: @user, status: 201
  end

  private

  def post_params
    params.permit(:username, :first_name, :last_name, :email, :photo)   #These must be included in the body of the POST or PATCH requests we will be making with JS fetch.
  end

end
