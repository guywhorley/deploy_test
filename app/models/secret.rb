class Secret < ActiveRecord::Base

  # validations
  validates :content, :presence => true
  
  # relationships
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :users_liked, through: :likes, source: :user

 end
