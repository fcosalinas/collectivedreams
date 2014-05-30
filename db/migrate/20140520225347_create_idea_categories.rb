class CreateIdeaCategories < ActiveRecord::Migration
  def change
    create_table :idea_categories do |t|
      t.references :idea, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
