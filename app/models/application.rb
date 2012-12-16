class Application < ActiveRecord::Base
  belongs_to :job
  belongs_to :user
  attr_accessible :why_us, :why_you
end
