# == Schema Information
#
# Table name: issues
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  link        :string(255)
#  category    :string(255)
#  rank        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Issue < ActiveRecord::Base
  attr_accessible :category, :description, :link, :name, :rank
end
