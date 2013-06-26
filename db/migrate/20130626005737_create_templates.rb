class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :name
      t.string :home
      t.string :emails
      t.string :bidding
      t.string :prime_contract
      t.string :commitments
      t.string :change_orders
      t.string :rfis
      t.string :submittals
      t.string :transmittals
      t.string :punch_list
      t.string :meetings
      t.string :schedule
      t.string :daily_log
      t.string :reports
      t.string :photos
      t.string :drawings
      t.string :documents
      t.string :directory
      t.string :admin

      t.timestamps
    end
  end
end
