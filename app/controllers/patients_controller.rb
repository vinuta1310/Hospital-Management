class PatientsController < ApplicationController
  before_action :set_patient, except: [ :index, :new, :create]

  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(set_patient_params)
    if @patient.save
      redirect_to patients_path, notice: "Patient created successfully"
    else
      render :new, status: :unprocessable_content
    end
  end

  def edit
  end

  def update
    if @patient.update(set_patient_params)
      redirect_to edit_patient_path(@patient), notice: "Updated successfully"
    else
      render :edit, status: :unprocessable_content
    end
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def set_patient_params
    params.require(:patient).permit(:name, :age, :gender)
  end
end
