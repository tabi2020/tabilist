class MembersController < ApplicationController

  def index
  #	@members = Member.order("number")
  # @members = Pref.Prefdetail.order("number")
  # @pref = Pref.order("id")
  # @prefdetail = Prefdetail.where(id: "1")
  #@pref = Pref.new
  # @prefdetail = prefdetail.new
  #@prefdetail = @pref.prefdetails.where(pref_id: "1")

  @pref = Pref.order("id")
  @pref2 = Pref.find(1)
  @prefdetail = @pref2.prefdetails.order("id")

#  @prefdetail = Prefdetail.find(1)
#  @Spot = @prefdetail.spots
 # @test = Pref.joins(:prefdetails).where(prefdetails: {id: 1})
#@test = Prefdetail.joins(:spots).joins(:plandetails).joins(:plan).where(prefdetails: {id: 1})
#@test = Plan.joins(:plandetails)
@test = Plan.joins({:plandetails => {:spot => :prefdetail}})
#@test =  Plan.joins(:plandetails => :spots)
#@test = Spot.joins(:plandetail)

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
