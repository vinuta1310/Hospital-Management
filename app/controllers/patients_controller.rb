class PatientsController < ApplicationController
  before_action :set_patient, except: [ :index, :new]

  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end
end
