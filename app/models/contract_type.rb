class ContractType < ActiveRecord::Base
  attr_accessible :name, :active
  
  has_many :contracts
  
end
