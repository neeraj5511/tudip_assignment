class ApplicationTest < ApplicationRecord
  belongs_to :test
  belongs_to :application
  has_many :answers
  has_many :interviews
end
