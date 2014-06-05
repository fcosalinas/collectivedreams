class CreateIdeaTags < ActiveRecord::Migration
  def change
    create_table :idea_tags do |t|
      t.references :idea, index: true
      t.references :tag, index: true

      t.timestamps
    end
  end
end
