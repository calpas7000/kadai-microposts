class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :reverses_of_favirite, class_name: "Favorite", foreign_key: "user_id"
  has_many :favorite_users, through: :reverses_of_favorite, source: :user
  
  has_many :favorites, dependent: :destroy
  
  validates :content, presence: true, length: { maximum: 255 }
end
