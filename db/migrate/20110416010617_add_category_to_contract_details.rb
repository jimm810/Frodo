class AddCategoryToContractDetails < ActiveRecord::Migration
  def self.up
    add_column :contract_details, :category_id, :integer
  end

  def self.down
    remove_column :contract_details, :category_id
  end
end
