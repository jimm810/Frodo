class ContractDetail < ActiveRecord::Base
  attr_accessible :contract_id, :name, :detail_type, :note, :revenue, :hours, :hours_used
  attr_accessible :rate, :fixed_price, :phase_id, :state_id, :status_id, :assigned_to, :assign_date
  attr_accessible :commit_date, :request_date, :category_id
  
  belongs_to :contract
  belongs_to :status
  belongs_to :state
  belongs_to :phase
  belongs_to :category
end
