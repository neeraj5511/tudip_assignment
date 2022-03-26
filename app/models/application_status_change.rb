class ApplicationStatusChange < ApplicationRecord
  belongs_to :application_status
  belongs_to :application
end
