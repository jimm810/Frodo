class ContractDetail < ActiveRecord::Base
  attr_accessible :contract_id, :name, :detail_type, :note, :revenue, :hours, :hours_used
  attr_accessible :rate, :fixed_price, :phase_id, :state_id, :status_id, :assigned_to, :assign_date
  attr_accessible :commit_date, :request_date, :category_id, :completion_date
  attr_accessible :group_id, :active, :complete
  
  belongs_to :contract
  belongs_to :status
  belongs_to :state
  belongs_to :phase
  belongs_to :category
  
  validates :name, :contract_id, :category_id, :revenue, :presence => true
  validates :state_id, :status_id, :presence => true
end
