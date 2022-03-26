class Candidate < ApplicationRecord
	include Searchable
	validates :email, :uniqueness => {message: 'That email already taken'}
    scope :filter_by_name, -> (start_name) { where("lower(name) like ?", "%#{start_name}%")}
    scope :filter_by_email, -> (email) { where("lower(email) like ?", "%#{email}%")}
end
