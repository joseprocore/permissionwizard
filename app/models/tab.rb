class Tab < ActiveRecord::Base
  attr_accessible :admin_text, :note, :read_only_text, :standard_text, :workflow_text, :name
end
