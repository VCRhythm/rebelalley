# == Schema Information
#
# Table name: clips
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  path_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ClipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
