class RemoveColumnDoctor < ActiveRecord::Migration[8.0]
  def change
    remove_column :patients, :doctor_id, :bigint
  end
end
