class SearchController < ApplicationController

  helper_method :get_spotdetail

  def index
    prefid = params[:prefid]
    prefdetailid = params[:prefdetailid]

#	prefdetail_table = Prefdetail.where(:pref_id => prefid)
#	@Prefdetail = prefdetail_table
	if prefdetailid.nil? then
		@Pref = Pref.joins(:prefdetails).select('prefs.*, prefdetails.*,prefdetails.id as prefdetailid').where(prefdetails: { pref_id: prefid })
		@Search_Plan = Plan.joins({:plandetails => {:spot => :prefdetail}}).where(prefdetails: { pref_id: prefid }).group('plans.id')
	else
    @Pref = Pref.joins(:prefdetails).select('prefs.*, prefdetails.*,prefdetails.id as prefdetailid').where(prefdetails: { pref_id: prefid })
    @PrefDetail = Prefdetail.where(prefdetails: { id: prefdetailid })
		@Search_Plan = Plan.joins({:plandetails => {:spot => :prefdetail}}).where(spots: { prefdetail_id: prefdetailid }).group('plans.id')
	end
# ・・・の旅行プラン | .../../ の旅行プランもまるごとレコメンド - tabilist
# ・・・<title>３ピースコンビネゾン(HARE)（サロペット/オーバーオール）｜HARE（ハレ）のファッション通販 - ZOZOTOWN</title>
  title = ""
  keywords = ""
  if @Pref.present? then
    @DetailExits = 1
    @Pref.each do |pref|
      title += pref.prefdetails_name
      keywords += pref.prefdetails_name
      keywords += ','
    end 

    @title = @Pref[0].pref_name + "の旅行プラン | " + title + "の旅行プランもまるごとレコメンド - tabilist"
    @keywords = @Pref[0].pref_name + "," + keywords + "tabilist,TABILIST,旅,たび,タビ,タビリスト,たびりすと,旅行,りょこう,レコメンド,おすすめ"
    @description = "【tabilist｜旅行プランをまるごとレコメンド！】" + @Pref[0].pref_name + "や" + keywords.chop + "の旅行プランを紹介します。"
  else
    @DetailExits = 0
    @Pref = Pref.where(id:prefid)
    @title = @Pref[0].pref_name + "の旅行プラン | " + @Pref[0].pref_name + "の旅行プランもまるごとレコメンド - tabilist"
    @keywords = @Pref[0].pref_name + ",tabilist,TABILIST,旅,たび,タビ,タビリスト,たびりすと,旅行,りょこう,レコメンド,おすすめ"
    @description = "【tabilist｜旅行プランをまるごとレコメンド！】" + @Pref[0].pref_name + "の旅行プランを紹介します。"

  end
#	plans = Plan.arel_table
#	plandetails = Plandetail.arel_table
#	spots = Spot.arel_table
#	prefdetails = Prefdetail.arel_table


#	condition =
#	  prefdetails
#	    .project(Arel.star)
#	    .where(spots[:prefdetail_id].eq(prefdetails[:id]))
#	    .where(spots[:prefdetail_id].eq(prefdetails[:id]) , prefdetails[:pref_id].eq(prefid))
 # 	    .where( prefdetails[:pref_id].eq(prefid))

#	@Search_Plan = Plan.joins({:plandetails => {:spot => :prefdetail}}).where(condition.exists).all


  end

  def get_spotdetail(spot_id)
    return Plandetail.joins(:spot).select('plandetails.* ,spots.*').where(plandetails: {plan_id: spot_id})
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
