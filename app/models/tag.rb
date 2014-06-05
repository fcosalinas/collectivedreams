class Tag < ActiveRecord::Base

	#attr_accessor :description
	has_many :dream_tag
	has_many :idea_tag
	has_many :dreams, :through => :dream_tag
	has_many :ideas, :through => :idea_tag
end
