class Task < ActiveRecord::Base
  belongs_to :status
  belongs_to :grabbed_by, :class_name => "User", :foreign_key => "grabbed_by"
end
