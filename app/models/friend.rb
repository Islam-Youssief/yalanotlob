class Friend < ApplicationRecord
  belongs_to :friend, :class_name => 'User'
  belongs_to :user, foreign_key: "user_id", :class_name => 'User'
end
