class Department < ActiveRecord::Base
  has_many :hardwares
  has_many :coworkers
  has_many :moniks
  has_many :requests
end
