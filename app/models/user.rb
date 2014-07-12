class User < ActiveRecord::Base

  	validates :first_name, presence: true, length: { maximum: 50 }
  	validates :last_name, presence: true, length: { maximum: 50 }
  	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  	has_secure_password
    validates :password, length: { minimum: 6 }

 	before_save { self.email = email.downcase }
  	before_create :create_remember_token

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

  	def User.new_remember_token
    SecureRandom.urlsafe_base64
  	end

  	def User.digest(token)
  	  Digest::SHA1.hexdigest(token.to_s)
  	end

  	private

    	def create_remember_token
	      self.remember_token = User.digest(User.new_remember_token)
	    end

end
