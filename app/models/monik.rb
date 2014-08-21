class Monik < ActiveRecord::Base
  belongs_to :department
  belongs_to :company
  belongs_to :coworker
end
