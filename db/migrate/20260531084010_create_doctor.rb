class CreateDoctor < ActiveRecord::Migration[8.0]
  def change
    create_table :doctors do |t|
      t.string :doctor_name
      t.string :specialization
      
      t.timestamps
    end
  end
end
