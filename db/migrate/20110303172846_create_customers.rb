class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :customer_id
      t.string :customer_name
      t.integer :service_type
      t.datetime :date

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
