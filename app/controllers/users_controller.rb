class UsersController < ApplicationController
  # load_and_authorize_resource
  before_action :authenticate_user!

  # def cart
  #   @cart = Cart.all.limit(10)
  # end

  def index
    @category = Category.find(params[:category_id])
    # @users = @category.users.all.limit(10)
  end


  def profile
    @user = current_user
  end

  def edit; end
  
  def show; end

end