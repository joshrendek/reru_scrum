class AddNameToStories < ActiveRecord::Migration
  def change
    add_column :stories, :name, :string
  end
end
