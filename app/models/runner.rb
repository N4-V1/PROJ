class Runner < ApplicationRecord
	validates :username, presence: true, uniqueness: true
	validates :password, presence:true, length: { minimum: 8 }
	validates :fname, presence:true
	validates :lname, presence:true
	validates :address, presence:true
	validates :contact, presence: true

	runner = Juan.new
	runner.valid?
	runner.errors.messages

	has_one :favor
end
