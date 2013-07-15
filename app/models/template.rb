class Template < ActiveRecord::Base
  attr_accessible :admin, :bidding, :change_orders, :commitments, :daily_log, :directory, :documents, :drawings, :emails, :home, :meetings, :name, :photos, :prime_contract, :punch_list, :reports, :rfis, :schedule, :submittals, :transmittals, :account_id, :default, :is_default
  belongs_to :account
  validates_presence_of :name

  def copy_to(account_id)
    copy = self.dup
    copy.account_id = account_id
    copy.is_default = false
    copy.save
  end

  def different_from(other_template)
    attributes = self.attributes
    ["id", "name", "created_at", "updated_at", "account_id", "default", "is_default"].each do |attribute|
      attributes.delete(attribute)
    end
    different = []
    attributes.keys.each do |key|
      unless other_template.send(key) == self.send(key)
        different << key
      end
    end
    different
  end

  def self.differences(templates, comparisons)
    differences = {}
    templates.each do |template|
      comparisons.each do |comparison|
        if template.name == comparison.name
          differences[template.name] = template.different_from(comparisons[templates.index(template)])
        end
      end
    end
    differences
  end

end
