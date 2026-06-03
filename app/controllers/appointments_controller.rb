class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show]

  def index
    @appointments = Appointment.includes(:doctor, :patient)
  end

  def show
  end

  def new
    @appointment = Appointment.new
    @patients = Patient.all
    @doctors = Doctor.all
  end

  def create
    @appointment = Appointment.new(set_appointment_params)
    if @appointment.save
      redirect_to appointments_path, notice: "Appointment created successfully"
    else
      @patients = Patient.all
      @doctors = Doctor.all
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def set_appointment_params
    params.require(:appointment).permit(:patient_id, :doctor_id, :reason)
  end
end
