class EstimatesController < ApplicationController
  def index
    @estimates = Estimate.all
  end

  def new
    @estimate = Estimate.new
  end

  def create
    @estimate = Estimate.create(estimate_params)
    if @gram.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def estimate_params
    params.require(:estimate).permit(:work_area, :description, :cost)
  end
end
