# == Schema Information
#
# Table name: paths
#
#  id         :integer          not null, primary key
#  next       :integer
#  prev       :integer
#  video_id   :integer
#  when       :float
#  length     :float
#  start      :float
#  end        :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PathTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
