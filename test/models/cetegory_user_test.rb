# == Schema Information
#
# Table name: cetegory_users
#
#  id          :bigint           not null, primary key
#  category_id :bigint           not null
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class CetegoryUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
