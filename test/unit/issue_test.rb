# == Schema Information
#
# Table name: issues
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  link        :string(255)
#  category    :string(255)
#  rank        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class IssueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
