class Shop < ActiveRecord::Base
  has_many :cleanings
  belongs_to :town
  belongs_to :street
  belongs_to :provider
end
