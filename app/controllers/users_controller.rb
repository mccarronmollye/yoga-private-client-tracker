class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def yoga_classes
    @user = User.find(params[:id])
    render json: @user.yoga_classes
  end
end
