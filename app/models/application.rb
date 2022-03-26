class Application < ApplicationRecord
  belongs_to :job
  belongs_to :applicant
  has_many :application_status_changes
  has_many :application_test
  has_many :application_documents
end
