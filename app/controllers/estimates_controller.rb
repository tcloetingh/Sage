class EstimatesController < ApplicationController
  def index
    @estimates = Estimate.all
  end

  def new
    @estimate = Estimate.new
  end

  def create
    @estimate.create(estimate_params)
    if @estimate.valid?
      redirect_to root_path
    end
  end

  private

  def estimate_params
    params.require(:estimate).permit(:work_area, :description, :cost)
  end
end
