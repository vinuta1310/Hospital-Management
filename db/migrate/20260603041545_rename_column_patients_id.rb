class RenameColumnPatientsId < ActiveRecord::Migration[8.0]
  def change
    rename_column :appointments, :patients_id, :patient_id 
  end
end
