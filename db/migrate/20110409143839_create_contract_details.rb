class CreateContractDetails < ActiveRecord::Migration
  def self.up
    create_table :contract_details do |t|
      t.integer :contract_id
      t.string :name
      t.string :detail_type
      t.text :note
      t.float :revenue
      t.float :hours
      t.float :hours_used
      t.float :rate
      t.boolean :fixed_price
      t.integer :phase_id
      t.integer :state_id
      t.integer :status_id
      t.string :assigned_to
      t.date :assign_date
      t.date :commit_date
      t.date :request_date
      t.timestamps
    end
  end

  def self.down
    drop_table :contract_details
  end
end
