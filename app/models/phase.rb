class Phase < ActiveRecord::Base
  attr_accessible :name, :active
  
   has_many :contract_details
   has_many :contracts
  
end
