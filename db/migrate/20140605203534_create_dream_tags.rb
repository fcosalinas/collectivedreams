class CreateDreamTags < ActiveRecord::Migration
  def change
    create_table :dream_tags do |t|
      t.references :dream, index: true
      t.references :tag, index: true

      t.timestamps
    end
  end
end
