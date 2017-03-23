class Favor < ApplicationRecord
	validates :pay, numericality: {only_integer: true}
	belongs_to :juan
	has_one :runner

	favor = Juan.new
	favor.valid?
	favor.errors.messages
end
