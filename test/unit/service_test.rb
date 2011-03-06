require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  test "service is invalid without a unique title" do
    service = Service.new(:service_type => services(:change_tires).service_type,
                          :description => "ssss",
                          :price => 12.97)
                          
    assert !service.save
    assert_equal "has already been take", service.errors[:service_type].join("; ")
    
  end

  test "the truth" do
    assert true
  end
end
