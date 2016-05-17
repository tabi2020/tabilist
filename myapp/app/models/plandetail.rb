class Plandetail < ActiveRecord::Base
	belongs_to :plan
	belongs_to :spot
end
