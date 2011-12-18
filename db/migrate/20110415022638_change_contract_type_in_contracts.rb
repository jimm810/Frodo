class ChangeContractTypeInContracts < ActiveRecord::Migration
  def self.up
    change_table :contracts do |t|
       t.rename :contract_type, :contract_type_id
    end   
  end

  def self.down
    change_table :contracts do |t|
       t.rename :contract_type_id, :contract_type
    end  
  end

end
