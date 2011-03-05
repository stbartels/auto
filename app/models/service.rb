class Service < ActiveRecord::Base
  validates :service_type, :description, :price, :presence => true
  validates_uniqueness_of :service_type, :case_sensitive => false
  validates_numericality_of :price, :greater_than_or_equal_to => 1, :message => "must be 1 or greater"
end