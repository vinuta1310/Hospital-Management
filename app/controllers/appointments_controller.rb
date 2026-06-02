class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.includes(:doctor, :patient)
  end
end
