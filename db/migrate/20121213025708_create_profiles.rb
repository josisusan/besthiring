class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.date :dob
      t.string :email
      t.integer :phone
      t.text :academic
      t.text :experience
      t.references :user_id
      
      t.timestamps
    end
  end
end
