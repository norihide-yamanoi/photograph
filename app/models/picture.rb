class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user, optional: true
  validates :content, presence: true
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
end
