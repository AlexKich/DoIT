class Company < ActiveRecord::Base
  has_many :hardwares
  has_many :coworkers
  has_many :moniks
end
