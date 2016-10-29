class CreateFamdoms < ActiveRecord::Migration[5.0]
  def change
    create_table :famdoms do |t|
      t.string :title

      t.timestamps
    end
  end
end
