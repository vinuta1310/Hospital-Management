class CreateAppointments < ActiveRecord::Migration[8.0]
  def change
    create_table :create_appointments do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.text :reason

      t.timestamps
    end
  end
end
