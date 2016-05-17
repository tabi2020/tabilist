class TopController < ApplicationController

#  require "active_support/all"

  helper_method :get_spotdetail

  def index
    @Plan =  Plan.order("RANDOM()")
    @img_file_name = "/default.jpg"

    @title = "旅行プランサイトtabilist.jp | おすすめの旅行プランをまるごとレコメンド"
    @keywords = "tabilist,TABILIST,旅,たび,タビ,タビリスト,たびりすと,旅行,りょこう,プラン,まるごと,レコメンド,おすすめ"
    @description = "tabilistはおすすめの旅行プランをまるごとレコメンド！ここに行きたい！が見つかるサイトです。"

=begin
  	animals = ["dog","cat","lion"]
  	animals << "mogura"
  	animals << "zou"
  	animals << "kirin"
  	animals << "unko"
  	animals << "hanakuso"
  	animals << "kuti"
  	animals << "me"
  	animals << "mayu"
  	animals << "te"
 
  	numbers = [1,3]
	numbers << 4 
	numbers << 5 
	numbers << 6
	numbers << 7 

  options = ["本町","テニス","幕張","南町","秋葉原","新宿",]


  	message = "This IS Title"
#  	@message = message.length.to_s + message +  animals[3] + animals.inspect
  	@titile = message
  	@message = ""

  	@message = numbers.find_all{ |item| item > 3}

    @message = request.remote_ip




  	def triangle(params)
  		params[:base] * params[:height] / 2.0
  	end


  	area = triangle(base: 5.0 , height: 20.0)
#  	@message = testbbb("bbbb")
    @message = 10.years.ago


    if @titile =~ /this/i
        @titile = @titile.gsub(/title/i,"replace")
    end

    robo1 = Robot.new("robotA")
    robo2 = FlyingRobot.new("roboB")
robo1.move(10,200)
robo2.move(500,800,400)
    
  robo2.name = "roboCF"

    @titile = robo1.name
    @message = robo2
    memberid = 123456
    @message = member(memberid)

	@message  = "aamebe" if animals.include?("mayu")

  	2.upto(7) do |i|
 		@message += animals[i] + '<br />'
	end

	animals.each do |item|
		@message += item +"<br />"
	end 
	secs = stopwatch(1000) do |i|
		Math.sqrt(i)
	end
	@message = secs

	begin
		File.open("some.txt" , encoding: "utf-8") do |f|
			@message = f.gets
		end

	rescue => e
		@message = "#{e.class} / #{e.message}"
	else

	end
=end




  end

  def get_spotdetail(spot_id)
    return Plandetail.joins(:spot).select('plandetails.* ,spots.*').where(plandetails: {plan_id: spot_id})
  end

  def about
    @titile  = "about_s"
    @message = "about"
  end



  def stopwatch(time)

  	start = Time.now.to_f
  	time.times {|i| yield i}
  	Time.now.to_f - start
  end

  def test(bb)
  	bb = "aaa"
  	return "aaaa" + bb
  end
end



class Robot
  attr_accessor:name

  def initialize(name)
    @name = name
    @x = @y = 0
  end

  def move(x,y)
    @x += x; @y += y
  end

  def to_s
    "#{@name}: #{@x} : #{@y}"
  end
end

class FlyingRobot < Robot

  def initialize(name)
    super
    @z = 0
  end

  def move(x,y,z)
    super(x,y)
    @z = z
  end

  def to_s
    super + " :#{@z}"
  end



end


