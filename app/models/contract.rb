class Contract < ActiveRecord::Base
  attr_accessible :name, :contract_type_id, :execution_date, :customer_id, :active
  attr_accessible :phase_id, :state_id, :status_id, :required_date, :close_date
  attr_accessible :group_id, :owner_id, :account_manager, :percent_complete, :revenue
    
  validates :name, :contract_type_id, :customer_id, :execution_date, :presence => true
  validates :state_id, :status_id, :phase_id, :revenue, :presence => true
  
  belongs_to :customer
  has_many :contract_details, :dependent => :destroy
  belongs_to :status
  belongs_to :state
  belongs_to :phase
  belongs_to :contract_type
end
