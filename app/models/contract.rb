class Contract < ActiveRecord::Base
  attr_accessible :name, :type, :execution_date, :customer_id, :active
  
  belongs_to :customer
  has_many :contract_details
  
end
