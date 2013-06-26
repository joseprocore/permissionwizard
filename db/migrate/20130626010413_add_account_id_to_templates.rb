class AddAccountIdToTemplates < ActiveRecord::Migration
  def change
    add_column :templates, :account_id, :integer
  end
end
