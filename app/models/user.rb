class User < ActiveRecord::Base

	has_many :idea_like
	has_many :dream_like
	has_many :ideas, :through => :idea_like
	has_many :dreams, :through => :dream_like
	has_many :sales
	has_many :user_quiz
	has_many :quizzes, :through => :user_quiz

	#attr_accessor :first_name, :last_name, :birth_date, :email

	def formatted_email
    "#{full_name} <#{email}>"
  	end
	

	def full_name
		first_name + " " + last_name
  	end

end
