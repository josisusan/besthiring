class Job < ActiveRecord::Base
  attr_accessible :description, :title
  belongs_to :admin 

end
