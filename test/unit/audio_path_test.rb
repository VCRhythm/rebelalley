# == Schema Information
#
# Table name: audio_paths
#
#  id         :integer          not null, primary key
#  next       :integer
#  prev       :integer
#  video_id   :integer
#  clip_id    :integer
#  start      :float
#  end        :float
#  go         :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AudioPathTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
