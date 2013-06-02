# == Schema Information
#
# Table name: clips
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  path_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Clip < ActiveRecord::Base
  attr_accessible :url, :name
  has_many :paths
  has_many :videos, through: :paths
end
