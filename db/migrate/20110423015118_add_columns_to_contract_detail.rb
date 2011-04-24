class AddColumnsToContractDetail < ActiveRecord::Migration
  def self.up
    add_column :contract_details, :completion_date, :date
    add_column :contract_details, :group_id, :integer
    add_column :contract_details, :active, :boolean
    add_column :contract_details, :complete, :boolean
  end

  def self.down
    remove_column :contract_details, :complete
    remove_column :contract_details, :active
    remove_column :contract_details, :group_id
    remove_column :contract_details, :completion_date
  end
end
