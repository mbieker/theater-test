class EventDate < ActiveRecord::Base
belongs_to :event
has_many :tickets

	def calculate_seats

		update vacant_seats: total_capacity - tickets.length

	end

end
