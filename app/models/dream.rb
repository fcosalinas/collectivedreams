class Dream < ActiveRecord::Base

	has_one :quiz
	has_many :sales

	#attr_accessor :description, :title, :place, :max_assistance, :min_assistance, :event_date, :event_cost
end
