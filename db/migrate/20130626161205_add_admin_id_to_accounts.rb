class AddAdminIdToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :admin_id, :integer
  end
end
