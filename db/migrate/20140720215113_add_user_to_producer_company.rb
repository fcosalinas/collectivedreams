class AddUserToProducerCompany < ActiveRecord::Migration
  def change
    add_reference :producer_companies, :user, index: true
  end
end
