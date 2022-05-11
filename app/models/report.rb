class Report < ApplicationRecord
	#geocoded_by :address
	#after_validation :geocode, if: :address_changed?
	#reverse_geocoded_by :latitude, :longitude, :location => :address
	#after_validation :reverse_geocode
end
