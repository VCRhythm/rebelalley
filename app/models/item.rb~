class Item < ActiveRecord::Base
	before_save :set_default

  attr_accessible :category, :content, :rank

	protected
	def set_default
		self.rank = 0 unless self.rank
	end
end
