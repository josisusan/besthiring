class Job < ActiveRecord::Base
  attr_accessible :description, :title
  belongs_to :admin 
  has_many :applications
  has_many :users, :through => :applications
end
