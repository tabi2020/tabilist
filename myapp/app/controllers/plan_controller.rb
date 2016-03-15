class PlanController < ApplicationController
  def index
    planid = params[:planid]
  	@Plan = Plan.joins({:plandetails => {:spot => :prefdetail}}).select('plans.id as planID,plandetails.id as plandetailsID, plans.*, plandetails.*, spots.*').where(plans: { id: planid })

  end


  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

end
