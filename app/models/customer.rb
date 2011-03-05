class Customer < ActiveRecord::Base
  validates_presence_of :customer_id, :message => "ID can't be blank"
  validates_uniqueness_of :customer_id, :case_sensitive => false, :message => "ID is already being used"
  validates :customer_name, :service_type, :date, :presence => true
  validates_numericality_of :service_type, :message => "can only be a number"
end
