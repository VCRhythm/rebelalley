class VisitorsController < ApplicationController
  # POST /visitors
  # POST /visitors.json
  def create
    @visitor = Visitor.new(params[:visitor])

    respond_to do |format|
      if @visitor.save
        format.html { redirect_to '/', notice: 'Visitor was successfully created.' }
				format.js 
        format.json { render json: @visitor } 
      else
        format.html { render '/' }
        format.json { render json: @visitor.errors, status: :unprocessable_entity }
      end
    end
  end
end
