class AddIsOpenToStories < ActiveRecord::Migration
  def change
    add_column :stories, :is_open, :integer, :default => 1, :size => 1
  end
end
