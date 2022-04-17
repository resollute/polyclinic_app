class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!

  # def cart
  #   @cart = Cart.all.limit(10)
  # end

  # def add_doctor
  #   kek = 1
  #   byebug
  # end

  def index
    @category = Category.find(params[:category_id])
    @doctors_users = User.where({id: @category.category_doctors}).page params[:page]
  end

  def profile
    @user = current_user
  end

  def edit; end
  
  def show; end

end