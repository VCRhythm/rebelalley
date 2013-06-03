# == Schema Information
#
# Table name: videos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  author     :string(255)
#  vote       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Video < ActiveRecord::Base
  attr_accessible :author, :name, :vote
  has_many :paths
  has_many :clips, through: :paths

  has_many :audio_paths
  has_many :clips, through: :audio_paths

    def length
	self.paths.count
    end
    def audio_length
	self.audio_paths.count
    end

end
