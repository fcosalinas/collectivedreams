class User < ActiveRecord::Base

	has_many :ideas
	has_many :idealikes
	has_many :sales

	attr_accessor :first_name, :last_name, :birth_date, :email

	def formatted_email
    "#{full_name} <#{email}>"
  	end
	

	def full_name
		first_name + last_name
  	end

end
