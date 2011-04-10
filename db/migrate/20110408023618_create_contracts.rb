class CreateContracts < ActiveRecord::Migration
  def self.up
    create_table :contracts do |t|
      t.string :name
      t.integer :contract_type 
      t.date :execution_date
      t.integer :customer_id
      t.boolean :active
      t.timestamps
    end
  end

  def self.down
    drop_table :contracts
  end
end
