require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  test "customer is invalid without a unique ID" do
    customer = Customer.new(:customer_id => customers(:bobby).customer_id,
                            :customer_name => "Testing",
                            :service_type => "1",
                            :date => "2011-06-03 11:28:47")
                            
    assert !customer.save
    assert_equal "has already been taken", customer.errors[:customer_id].join("; ")
  end
  test "the truth" do
    assert true
  end
end
