class Admin < ActiveRecord::Base
  has_many :accounts

  def full_name
  	"#{first_name} #{last_name}"
  end

end
