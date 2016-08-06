class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def index
    @users = User.where.not(id: current_user.id)
  end

  def show
  end

  private

  def set_user
    @user = User.includes(:friends).find_by(username: params[:username])
  end
end
