class Quiz < ActiveRecord::Base

	belongs_to :idea
	belongs_to :dream

	#attr_accessor :possible_date, :idea, :possible_places, :max_assistance, :min_assistance, :max_cost, :min_cost
	
end
