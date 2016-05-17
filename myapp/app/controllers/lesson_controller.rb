class LessonController < ApplicationController
=begin
	before_action :set_message, only: :step7
		def step7
			render text: @message
		end

		private
		def set_message
			@message = "こんにちわ"
		end
=end

	def step1
		render text:"こんにちは、#{params[:name]}さん"
	end

	def step2
		flash[:notice] = "step6に移動します"
		redirect_to action: "step3"
	end

	def step3
		render text:flash[:notice]
	end


end
