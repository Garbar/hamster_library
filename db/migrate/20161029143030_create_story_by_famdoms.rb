class CreateStoryByFamdoms < ActiveRecord::Migration[5.0]
  def change
    create_table :story_by_famdoms do |t|
      t.integer :story_id
      t.integer :author_id

      t.timestamps null: false
    end
  end
end