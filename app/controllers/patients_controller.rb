class PatientsController < ApplicationController
  before_action :set_patient, except: [ :index ]

  def index
    @patients = Patient.all
  end

  def show
  end

  private
  def set_patient
    @patient = Patient.find(params[:id])
  end
end
