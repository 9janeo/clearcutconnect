class EstimatesController < ApplicationController
  
  def index
  	#respond_to
  	@estimates = Estimate.all
  	@estimate = Estimate.new
  end

  def new
  	@estimate = Estimate.new
  end

  def load
  	if @estimate.blank?
  		return "nothing to see here"
  	else
  		@estimate
  	end
  end

  def clear
  end

  def delete
  end

  private

  def estimate_params
    params.require(:type).permit(:start, :end, :owner, :phone, :email)
  end
end
