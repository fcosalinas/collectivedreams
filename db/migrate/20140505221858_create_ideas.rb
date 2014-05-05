class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :description
      t.string :title
      t.string :possible_places, array: true, default:[]
      t.integer :max_assistance
      t.integer :min_assistance
      t.date :possible_dates, array: true, default:[]
      t.date :creation_date
      t.float :max_cost
      t.float :min_cost

      t.timestamps
    end
  end
end
