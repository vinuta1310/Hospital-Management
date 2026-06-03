class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  validates :patient_id, presence: true
  validates :doctor_id, presence: true
  validates :reason, presence: true
end
