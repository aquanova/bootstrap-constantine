class Street < ActiveRecord::Base
  belongs_to :area
  attr_accessible :name, :area
end
