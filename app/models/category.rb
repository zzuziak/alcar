class Category < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  mount_uploader :icon, PhotoUploader

  has_many :products, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
end
