class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :dream
      t.references :user
      t.date :payment_date
      t.float :amount
      t.integer :instalments

      t.timestamps
    end
  end
end
