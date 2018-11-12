class User < ApplicationRecord
  extend FriendlyId
  before_create :profile_save 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable, :omniauthable

  friendly_id :username

  validates_uniqueness_of :username
  validates_presence_of :username
  validates_presence_of :email

  has_one  :profile

  has_many :skills
  accepts_nested_attributes_for :skills, allow_destroy: true, reject_if: :all_blank

  has_many :works
  accepts_nested_attributes_for :works, allow_destroy: true, reject_if: :all_blank

  has_many :user_links
  accepts_nested_attributes_for :user_links, allow_destroy: true, reject_if: :all_blank
  

  def profile_save
    self.build_profile
  end
  
end
