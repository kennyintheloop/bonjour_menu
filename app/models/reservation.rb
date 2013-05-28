class Reservation < ActiveRecord::Base
  attr_accessible :appoint_date, :party, :user_id, :user_type
  validates_inclusion_of :party, :in => 2..20
  validates :party, :presence => true
end
