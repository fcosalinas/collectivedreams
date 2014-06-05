class Dream < ActiveRecord::Base

	has_many :quiz
	has_many :sales	
	has_many :dream_category
	has_many :idea_category
	has_many :categories, :through => :dream_category
	has_many :categories, :through => :idea_category

	#attr_accessor :description, :title, :place, :max_assistance, :min_assistance, :event_date, :event_cost
end
