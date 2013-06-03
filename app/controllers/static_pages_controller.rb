class StaticPagesController < ApplicationController
	def index
		@video = Video.first 
		@videoCount = 0
		@audioCount = 0
		@visitor = Visitor.new
	end
end
