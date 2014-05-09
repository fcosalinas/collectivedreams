class Idea < ActiveRecord::Base

	 belongs_to :user
	 has_one :quiz
	 has_many :idealikes
	 has_many :tags
	 has_many :categories

	 attr_accessor :description, :title, :possible_places, :max_assistance, :min_assistance, :possible_dates, :creation_date, :max_cost, :min_cost
end
