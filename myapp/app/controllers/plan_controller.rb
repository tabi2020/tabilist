class PlanController < ApplicationController
  def index
    planid = params[:planid]
  	@Plan = Plan.joins({:plandetails => {:spot => :prefdetail}}).select('plans.id as planID,plandetails.id as plandetailsID, plans.*, plandetails.*, spots.* , prefdetails.*').where(plans: { id: planid })

    if @Plan.empty? then
      redirect_to '/'
      return
    end 


    title = ""
    spotName = ""
    @Plan.each do |plan|
      title += plan.prefdetails_name
      spotName += plan.spot_name
      spotName += ','
    end 


    @title = @Plan[0].prefdetails_name + "の旅行プラン |　" + spotName.chop + "の旅行プランもまるごとレコメンド - tabilist"
    @keywords = @Plan[0].prefdetails_name + "," + spotName + "tabilist,TABILIST,旅,たび,タビ,タビリスト,たびりすと,旅行,りょこう,レコメンド,おすすめ"
    @description = "【tabilist|" + @Plan[0].plan_title + "】" + spotName.chop + "を訪れる旅行プランを紹介します。"

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
