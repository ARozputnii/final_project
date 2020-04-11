# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string
#
class Post < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :categories, through: :category_posts
  has_many :category_posts
  has_many :users, through: :post_users
  has_many :post_users, dependent: :destroy

  # def categories_attributes=(category_attributes)
  #   category_attributes.values.each do |category_attribute|
  #     category = Category.find_or_create_by(category_attribute)
  #     self.category << category
  #   end
  # end
end
