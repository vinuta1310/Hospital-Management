class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show]

  def index
    @appointments = Appointment.includes(:doctor, :patient)
  end

  def show
  end

  def new
    @appointment = Appointment.new
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def set_appointment_params
    params.require(:appointment).permit(:name, :doctor_name, :reason)
  end
end
