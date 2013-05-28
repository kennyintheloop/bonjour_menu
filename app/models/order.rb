class Order < ActiveRecord::Base
  attr_accessible :delivery_date, :detail, :total, :user_id,:addr
  validates :detail, :presence => true
  validates :addr, :presence => true
end
