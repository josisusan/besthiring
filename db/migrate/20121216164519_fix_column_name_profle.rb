class FixColumnNameProfle < ActiveRecord::Migration
  def self.up
    rename_column :profiles, :user_id_id, :user_id
  end

  def self.down
    rename_column :profiles, :user_id, :user_id_id
  end
end
