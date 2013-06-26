class DropTabs < ActiveRecord::Migration
  def change
  	drop_table :tabs
  end
end
