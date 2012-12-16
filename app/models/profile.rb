class Profile < ActiveRecord::Base
  attr_accessible :academic, :dob, :email, :experience, :name, :phone
  belongs_to :user
end
