class Status < ActiveRecord::Base
  attr_accessible :name, :active
  
  has_many :contracts
  has_many :contract_details
  
end
