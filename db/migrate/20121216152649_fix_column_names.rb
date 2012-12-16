class FixColumnNames < ActiveRecord::Migration
  def up
    change_table :applications do |t|
      t.rename :job_id_id, :job_id
      t.rename :user_id_id, :job_id
    end
  end

  def down
    change_table :applications do |t|
      t.rename :job_id, :job_id_id
      t.rename :user_id, :job_id_id
    end
  end
end
