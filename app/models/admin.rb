class Admin < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :accounts
end
