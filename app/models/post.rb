class Post < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :categories, through: :category_posts
  has_many :category_posts
end
