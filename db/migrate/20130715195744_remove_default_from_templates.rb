class RemoveDefaultFromTemplates < ActiveRecord::Migration
  def up
    remove_column :templates, :default
  end

  def down
    add_column :templates, :default, :integer
  end
end
