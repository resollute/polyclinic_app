class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!

  def index
    @category = Category.find(params[:category_id])
    @doctors_users = User.where({id: @category.category_doctors}).order(:created_at).page params[:page]
  end

  def edit; end
  
  def show; end

  def profile
    @user = current_user
  end

  def request_appointment
    @category = Category.find(params[:category_id])
    # 
    @chosen_doctor = User.find(params[:user_id])
    
    if @chosen_doctor.patients_appointments.include?(current_user.id)
      redirect_to category_users_path(@category), alert: "Request to see a doctor already exists"
    else
      @chosen_doctor.patients_appointments.push(current_user.id)
      @chosen_doctor.save!
      redirect_to category_users_path(@category), alert: "Request for appointment"
    end    
  end

  def approve_appointment
    @doctor_user = current_user
  end

end