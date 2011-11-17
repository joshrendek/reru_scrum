class Story < ActiveRecord::Base
  has_many :tasks
  belongs_to :author, :class_name => "User", :foreign_key => "author_id"
end
