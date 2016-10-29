class AddImageUrlToStories < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :image_url, :string
    add_column :stories, :user_id, :integer
    add_index :stories, :user_id
  end
end
