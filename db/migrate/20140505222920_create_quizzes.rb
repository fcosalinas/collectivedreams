class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :possible_date, array: true, default:[]
      t.references :idea
      t.string :possible_places, array: true, default:[]
      t.integer :max_assistance
      t.integer :min_assistance
      t.float :max_cost
      t.float :min_cost

      t.timestamps
    end
  end
end
