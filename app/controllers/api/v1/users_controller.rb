class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def index
    @users = User.all
    render json: @users, status: 201
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: 201
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password, :email, :photo)   #These must be included in the body of the POST or PATCH requests we will be making with JS fetch.
  end

end
