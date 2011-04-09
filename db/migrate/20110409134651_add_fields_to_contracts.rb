class AddFieldsToContracts < ActiveRecord::Migration
  def self.up
    add_column :contracts, :phase_id, :integer
    add_column :contracts, :state_id, :integer
    add_column :contracts, :status_id, :integer
  end

  def self.down
    remove_column :contracts, :status_id
    remove_column :contracts, :state_id
    remove_column :contracts, :phase_id
  end
end
