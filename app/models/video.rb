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

    def length
	self.paths.count
    end

end
