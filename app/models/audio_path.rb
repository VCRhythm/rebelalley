class AudioPath < ActiveRecord::Base
  attr_accessible :cip_id, :end, :length, :next, :prev, :start, :video_id, :when

  belongs_to :clip
  belongs_to :video
end
