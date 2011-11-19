class Task < ActiveRecord::Base
  belongs_to :status
  belongs_to :user, :class_name => 'User', :primary_key => 'grouped_by'
  has_many :comments
end
