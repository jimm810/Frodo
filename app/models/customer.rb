class Customer < ActiveRecord::Base
  attr_accessible :name, :street, :city, :state, :zipcode, :email, :active, :phone, :mobile
  validates_presence_of :name,:street,:city,:state,:zipcode, :on => :create, :message => "can't be blank"

  has_many :contracts, :dependent => :destroy

end
