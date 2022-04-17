class CategoriesController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!

  before_action :set_category, only: %i[show edit update destroy]


  def update_category_doctors
    @category = Category.find(params[:category_id])
    byebug
    category_doctors_params = params[:category][:category_doctors].to_i
    if @category.category_doctors.include?(category_doctors_params)
      redirect_to categories_path, alert: "This doctor has already been added"
    else
      byebug
      @category.category_doctors.push(category_doctors_params)
      @category.save!
      redirect_to categories_path, notice: "Field updated"    
    end   
  end

  def new
    page_not_found unless current_user
    @category = Category.new
  end

  def create
    Category.create!(category_params)
    redirect_to categories_path
  end

  def index
    @categories = Category.all.limit(10).order(:title)
  end

  def edit; end

  def show

  end

  def update
    byebug
    @category.update!(category_params)
    redirect_to categories_path
  end

  def destroy
    @category.destroy!
    redirect_to categories_path
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:title, :category_doctors, :id, :fullname)
  end
end