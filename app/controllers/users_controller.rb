class UsersController < ApplicationController
  
  def index
      users = User.all
      render json: users
  end

  def show
      user = User.find_by(id: params[:id])
      render json: user
  end

  def create
      user = User.create(user_params)
      render json: user
  end

  def update
    
      user = User.find_by(id: params[:id])
      user.update(email: user_params[:email], username: user_params[:username], password: user_params[:password])
      render json: user
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy

  end

  def login
    user = User.find_by(username: user_params[:username], password: user_params[:password])
    render json: user
  end

  private

  def user_params
      params.require(:user).permit(:username, :password, :email)
  end


end
