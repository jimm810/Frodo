class AddRevenueToContracts < ActiveRecord::Migration
  def self.up
    add_column :contracts, :revenue, :float
  end

  def self.down
    remove_column :contracts, :revenue
  end
end
