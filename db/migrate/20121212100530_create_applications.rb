class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.text :why_you
      t.text :why_us
      t.references :job_id
      t.references :user_id

      t.timestamps
    end
    add_index :applications, :job_id_id
    add_index :applications, :user_id_id
  end
end
