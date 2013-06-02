# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  rank       :integer
#  category   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Item < ActiveRecord::Base
	before_save :set_default

  attr_accessible :category, :content, :rank

	protected
	def set_default
		self.rank = 0 unless self.rank
	end
end
