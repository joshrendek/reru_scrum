class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer :story_type_id

      t.timestamps
    end
  end
end
