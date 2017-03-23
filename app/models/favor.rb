class Favor < ApplicationRecord
	belongs_to :juan
	has_one :runner
end
