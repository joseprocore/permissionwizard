class AddDefaultToTemplates < ActiveRecord::Migration
  def change
    add_column :templates, :default, :integer
  end
end
