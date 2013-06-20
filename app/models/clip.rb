# == Schema Information
#
# Table name: clips
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  type       :string(255)
#

class Clip < ActiveRecord::Base
  attr_accessible :url, :name, :bent
  has_many :paths
  has_many :videos, through: :paths
end
