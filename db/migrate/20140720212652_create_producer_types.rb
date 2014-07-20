class CreateProducerTypes < ActiveRecord::Migration
  def change
    create_table :producer_types do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
