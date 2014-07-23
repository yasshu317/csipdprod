class Employee < ActiveRecord::Base
	belongs_to :user
	has_many :ratings
	has_many :OffShore_manager_ratings
	has_many :onsite_manager_ratings

	ONSITE_MANAGER = 'Onsite PM'
	OFFSHORE_MANAGER = 'OffShore PM'
	LEAD = 'Lead'

end
