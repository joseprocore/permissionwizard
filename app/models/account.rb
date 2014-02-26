class Account < ActiveRecord::Base
  has_many :templates
  belongs_to :admin

  validates_presence_of :name, :admin_id

  def self.copy_templates(source_id, destination_id)
    source = Account.includes(:templates).find(source_id)
    source.templates.each do |template|
      template.copy_to(destination_id)
    end
  end





end
