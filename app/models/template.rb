class Template < ActiveRecord::Base
  attr_accessible :admin, :bidding, :change_orders, :commitments, :daily_log, :directory, :documents, :drawings, :emails, :home, :meetings, :name, :photos, :prime_contract, :punch_list, :reports, :rfis, :schedule, :submittals, :transmittals, :account_id
  belongs_to :account
end
