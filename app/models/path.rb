# == Schema Information
#
# Table name: paths
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

class Path < ActiveRecord::Base
  attr_accessible :clip_id, :start, :end, :go
  default_scope order 'go ASC'
  belongs_to :clip
  belongs_to :video

  def length
    self.end-self.start
  end

end
