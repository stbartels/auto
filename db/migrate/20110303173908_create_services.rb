class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.string :service_type
      t.text :description
      t.decimal :price, :precision => 10, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end
