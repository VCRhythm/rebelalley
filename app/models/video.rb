# == Schema Information
#
# Table name: videos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  author     :string(255)
#  vote       :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Video < ActiveRecord::Base
  attr_accessible :author, :name, :vote, :paths_attributes, :audio_paths_attributes
  has_many :paths
  accepts_nested_attributes_for :paths, allow_destroy:true

  has_many :clips, through: :paths
  has_many :audio_paths
  has_many :clips, through: :audio_paths
	accepts_nested_attributes_for :audio_paths, allow_destroy:true

    def length
	self.paths.count
    end
    def audio_length
	self.audio_paths.count
    end

end
