class CreateAuthorStories < ActiveRecord::Migration[5.0]
  def change
    create_table :author_stories do |t|
      t.references :author, foreign_key: true
      t.references :story, foreign_key: true

      t.timestamps
    end
  end
end
