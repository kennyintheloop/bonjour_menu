class User < ActiveRecord::Base
  attr_accessible :name,:useremail, :password

  has_secure_password
  validates :useremail, :presence => true
  validates_uniqueness_of :name
end
