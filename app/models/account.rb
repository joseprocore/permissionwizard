class Account < ActiveRecord::Base
  attr_accessible :name, :admin_id
  has_many :templates
  belongs_to :admin

  validates_presence_of :name, :admin_id

  def self.copy_templates(source_id, destination_id)
    source = Account.find(source_id)
    source.templates.each do |template|
      template.copy_to(destination_id)
    end
  end





end
