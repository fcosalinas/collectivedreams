class CreateProducerCompanies < ActiveRecord::Migration
  def change
    create_table :producer_companies do |t|
      t.string :name
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
