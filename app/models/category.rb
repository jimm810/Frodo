class Category < ActiveRecord::Base
  attr_accessible :name, :active
  has_many :contract_details
  
end
