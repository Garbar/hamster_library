class CreateFamdomStories < ActiveRecord::Migration[5.0]
  def change
    create_table :famdom_stories do |t|
      t.references :famdom, foreign_key: true
      t.references :story, foreign_key: true

      t.timestamps
    end
  end
end
