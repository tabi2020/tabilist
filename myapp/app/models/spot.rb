class Spot < ActiveRecord::Base
	belongs_to :prefdetail
	has_many :plandetails
end
