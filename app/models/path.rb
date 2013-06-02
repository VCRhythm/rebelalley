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

class Path < ActiveRecord::Base
  attr_accessible :clip_id, :next, :prev, :video_id, :when
  belongs_to :clip
  belongs_to :video
end
