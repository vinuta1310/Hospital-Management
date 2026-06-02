class PatientsController < ApplicationController
  before_action :set_patient, except: [ :index, :new, :create]
  before_action :load_doctor, only: [ :new, :edit]

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

  def destroy
    @patient.destroy
    redirect_to patients_path, notice: "Deleted successfully"
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def set_patient_params #strong param
    params.require(:patient).permit(:name, :age, :gender, :doctor_id)
  end

  def load_doctor
    @doctors = Doctor.all
  end
end
