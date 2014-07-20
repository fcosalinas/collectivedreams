class AddProducerTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :producer_type, :integer
  end
end
