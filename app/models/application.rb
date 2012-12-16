class Application < ActiveRecord::Base
  belongs_to :job_id
  belongs_to :user_id
  attr_accessible :why_us, :why_you
end
