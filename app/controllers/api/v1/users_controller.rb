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
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password, :email, :photo)   #These must be included in the body of the POST or PATCH requests we will be making with JS fetch.
  end

end
