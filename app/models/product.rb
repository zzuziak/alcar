class Product < ApplicationRecord
  # mount_uploader :photo, PhotoUploader

  belongs_to :category

  has_many :options, dependent: :destroy
end
