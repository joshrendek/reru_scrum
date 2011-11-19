class AddIsOpenToStories < ActiveRecord::Migration
  def change
    add_column :stories, :is_open, :boolean, :default => 1
  end
end
