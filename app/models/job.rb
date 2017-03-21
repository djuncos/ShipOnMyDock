class Job < ApplicationRecord

	has_many :pairings
	has_many :boats, through: :pairings

	def available?
		if self.containers == 0
			"Filled"
		else
			"Open"
		end
	end

end
