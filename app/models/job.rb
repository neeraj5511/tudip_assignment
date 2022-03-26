class Job < ApplicationRecord
  belongs_to :tudip_process
  belongs_to :job_platform
  belongs_to :job_position
  belongs_to :job_category
  belongs_to :organization
end
