class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!

  def index
    @category = Category.find(params[:category_id])
    @doctors_users = User.where({id: @category.category_doctors}).page params[:page]
  end

  def edit; end
  
  def show; end

  def profile
    @user = current_user
  end

  def make_appointment
    @category = Category.find(params[:category_id])
    @doctor_user = User.find(params[:user_id])
    byebug
    # redirect_to category_users_path
  end

  def approve_appointment
    
  end
end