class AddIsDefaultToTemplates < ActiveRecord::Migration
  def change
    add_column :templates, :is_default, :boolean
  end
end
