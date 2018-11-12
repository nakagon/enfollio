class UserLink < ApplicationRecord
  self.inheritance_column = :_type_disabled
  belongs_to :user
  enum type: { github: 1 , twitter:2, facebook:3, qiita:4, other:5 }
end
