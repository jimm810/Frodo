class AddColumnsToContract < ActiveRecord::Migration
  def self.up
    add_column :contracts, :required_date, :date
    add_column :contracts, :close_date, :date
    add_column :contracts, :group_id, :integer
    add_column :contracts, :owner_id, :integer
    add_column :contracts, :account_manager, :string
    add_column :contracts, :percent_complete, :integer
  end

  def self.down
    remove_column :contracts, :percent_complete
    remove_column :contracts, :account_manager
    remove_column :contracts, :owner_id
    remove_column :contracts, :group_id
    remove_column :contracts, :close_date
    remove_column :contracts, :required_date
  end
end
