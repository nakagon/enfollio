class UserLink < ApplicationRecord
  self.inheritance_column = :_type_disabled
  belongs_to :user
  enum type: { github: 1 , twitter:2, facebook:3, lightbulb:4, blogger:5 }
end
