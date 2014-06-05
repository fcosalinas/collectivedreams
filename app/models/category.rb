class Category < ActiveRecord::Base

	#attr_accessor :description
	has_many :idea_category
	has_many :dream_category
	has_many :ideas, :through => :idea_category	 
	has_many :dreams, :through => :dream_category
end
