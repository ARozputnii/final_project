# == Schema Information
#
# Table name: category_posts
#
#  id          :bigint           not null, primary key
#  category_id :bigint           not null
#  post_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class CategoryPostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
