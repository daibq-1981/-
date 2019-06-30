class Image < ApplicationRecord
  mount_uploader :file, ImageUploader
  
  belongs_to :user
  has_many :image_comments, ->{ order "create_at DESC"}
end
