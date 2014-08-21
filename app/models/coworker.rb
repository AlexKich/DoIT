class Coworker < ActiveRecord::Base
  belongs_to :company
  belongs_to :department
  has_many :moniks
  has_many :hardwares
end
