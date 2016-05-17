class Prefdetail < ActiveRecord::Base
	belongs_to :pref
	has_many :spots
end
