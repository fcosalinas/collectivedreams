class CreateTenders < ActiveRecord::Migration
  def change
    create_table :tenders do |t|
      t.references :producer_company, index: true
      t.references :idea, index: true
      t.string :place
      t.float :price
      t.date :event_date
      t.integer :max_capacity
      t.integer :min_capacity

      t.timestamps
    end
  end
end
