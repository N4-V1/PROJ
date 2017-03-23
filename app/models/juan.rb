class Juan < ApplicationRecord
	validates :username, presence: true, uniqueness: true
	validates :password, presence:true, length: { minimum: 2 }
	validates :fname, presence:true
	validates :lname, presence:true
	validates :address, presence:true

	juan = Juan.new
	juan.valid?
	juan.errors.messages

	has_many :favors
end
