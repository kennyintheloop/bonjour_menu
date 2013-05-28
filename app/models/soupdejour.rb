class Soupdejour < ActiveRecord::Base
  attr_accessible :sdate, :sname
  validates :sname, :presence => true
end
