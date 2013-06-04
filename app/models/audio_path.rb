class AudioPath < ActiveRecord::Base
  attr_accessible :cip_id, :end, :length, :next, :prev, :start, :video_id, :when

  default_scope order('id ASC')
  belongs_to :clip
  belongs_to :video
end
