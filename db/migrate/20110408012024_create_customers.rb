class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :email
      t.boolean :active
      t.string :phone
      t.string :mobile
      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
