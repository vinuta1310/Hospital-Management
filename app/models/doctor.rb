class Doctor < ApplicationRecord
  validates :doctor_name, presence: true
  has_many :patients
end
