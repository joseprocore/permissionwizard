class CreateTabs < ActiveRecord::Migration
  def change
    create_table :tabs do |t|
      t.string :read_only_text
      t.string :standard_text
      t.string :admin_text
      t.string :workflow_text
      t.string :note

      t.timestamps
    end
  end
end
