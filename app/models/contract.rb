class Contract < ActiveRecord::Base
  attr_accessible :name, :contract_type, :execution_date, :customer_id, :active
  
  belongs_to :customer
  has_many :contract_details
  
end
