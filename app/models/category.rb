class Category < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  mount_uploader :icon, PhotoUploader

  has_many :products, dependent: :destroy
end
