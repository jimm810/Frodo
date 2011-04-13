class ContractDetail < ActiveRecord::Base
  attr_accessible :contract_id, :name, :detail_type, :note, :revenue, :hours, :hours_used, :rate, :fixed_price, :phase_id, :state_id, :status_id, :assigned_to, :assign_date, :commit_date, :request_date
  belongs_to :contract
  belongs_to :status
end
