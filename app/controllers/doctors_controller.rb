class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show] 
  def index
    @doctors = Doctor.all
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(set_doctor_params)
    if @doctor.save
      redirect_to doctors_path, notice: "Doctor created successfully"
    else
      render :new, status: :unprocessable_content
    end
  end

  private
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def set_doctor_params
    params.require(:doctor).permit(:doctor_name, :specialization)
  end
end
