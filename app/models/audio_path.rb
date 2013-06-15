class AudioPath < ActiveRecord::Base
  attr_accessible :cip_id, :end, :length, :next, :prev, :start, :video_id, :when

  default_scope order('length ASC')
  belongs_to :clip
  belongs_to :video

  def length
    self.end-self.start
  end
end
