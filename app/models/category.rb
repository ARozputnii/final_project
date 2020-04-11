# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  has_many :cetegory_users, dependent: :destroy
  has_many :users, through: :cetegory_users
  has_many :category_posts
  has_many :posts, through: :category_posts

  validates :name, presence: true
end
