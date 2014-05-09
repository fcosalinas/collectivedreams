class CreateIdeaLikes < ActiveRecord::Migration
  def change
    create_table :idea_likes do |t|
      t.references :idea
      t.references :user, index: true

      t.timestamps
    end
  end
end
