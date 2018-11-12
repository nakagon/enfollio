class Skill < ApplicationRecord
  belongs_to :user
  belongs_to :skill_master
  enum age: { less1year: 0 , over1year: 1 , over3year:2}

end
