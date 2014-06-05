class Quiz < ActiveRecord::Base

	belongs_to :idea
	belongs_to :dream
	belongs_to :user

	#attr_accessor :possible_date, :idea, :possible_places, :max_assistance, :min_assistance, :max_cost, :min_cost
	
end
