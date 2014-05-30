class Sale < ActiveRecord::Base

	belongs_to :user
	belongs_to :dream

	#attr_accessor :dream, :user, :payment_day, :amount, :instalments
end
