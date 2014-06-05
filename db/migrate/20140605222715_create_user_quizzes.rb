class CreateUserQuizzes < ActiveRecord::Migration
  def change
    create_table :user_quizzes do |t|
      t.references :user, index: true
      t.references :quiz, index: true

      t.timestamps
    end
  end
end
