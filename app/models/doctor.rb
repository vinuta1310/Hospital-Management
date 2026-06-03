class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  validates :doctor_name, presence: true
end
