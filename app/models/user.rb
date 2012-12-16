class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable

  has_many :applications
  has_many :jobs, :through => :applications
  has_one :profile
  
  attr_accessible :email, :encrypted_password, :password, :password_confirmation
end
