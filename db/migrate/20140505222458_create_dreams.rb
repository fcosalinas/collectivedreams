class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.string :description
      t.string :title
      t.string :place
      t.integer :max_assistance
      t.integer :min_assistance
      t.date :event_date
      t.float :event_value

      t.timestamps
    end
  end
end
