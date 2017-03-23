class Juan < ApplicationRecord

validates :fname, :lname, :address, :username, :password, presence: true
validates :username, uniqueness: true
validates :password, length: { minimum: 8 }

juan = Juan.new
juan.valid?
juan.errors.messages

end
