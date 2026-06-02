class Doctor < ApplicationRecord
  validates :doctor_name, presence: true
end
