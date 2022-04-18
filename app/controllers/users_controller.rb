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

  end
end