class Hardware < ActiveRecord::Base
  belongs_to :company
  belongs_to :department
  belongs_to :coworker
end
