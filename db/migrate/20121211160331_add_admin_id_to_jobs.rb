class AddAdminIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :admin_id, :integer
  end
end
