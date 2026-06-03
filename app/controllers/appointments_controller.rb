class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show]

  def index
    @appointments = Appointment.includes(:doctor, :patient)
  end

  def show
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

end
