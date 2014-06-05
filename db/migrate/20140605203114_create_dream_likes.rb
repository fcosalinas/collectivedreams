class CreateDreamLikes < ActiveRecord::Migration
  def change
    create_table :dream_likes do |t|
      t.references :dream, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
