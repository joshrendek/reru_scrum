class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :area
      t.text :description
      t.integer :status_id
      t.integer :grabbed_by
      t.integer :story_id

      t.timestamps
    end
  end
end
