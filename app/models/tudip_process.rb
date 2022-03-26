class TudipProcess < ApplicationRecord
  belongs_to :recruiter
  has_many :process_steps
  has_many :jobs
end
