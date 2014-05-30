class CreateDreamCategories < ActiveRecord::Migration
  def change
    create_table :dream_categories do |t|
      t.references :dream, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
