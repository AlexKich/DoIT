class Cleaning < ActiveRecord::Base
	belongs_to :user
	belongs_to :shop
	validates :user_shop_start, presence: true
end
