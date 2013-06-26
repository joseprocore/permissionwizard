class Account < ActiveRecord::Base
  attr_accessible :name, :admin_id
  has_many :templates
  belongs_to :admin

  validates_presence_of :name, :admin_id
end
