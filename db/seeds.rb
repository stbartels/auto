# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# Delete all the data in the customer table before
# add default test data.
Customer.delete_all

Customer.create(:id => 1, :customer_id => "ga3s4a", :customer_name => "John Smith", :service_type => 1, :date => "2011-03-03 17:31:00 UTC")
Customer.create(:id => 2, :customer_id => "d4dads", :customer_name => "Joan Hex", :service_type => 2, :date => "2011-03-03 17:31:00 UTC")
Customer.create(:id => 3, :customer_id => "han3dx", :customer_name => "Kari Moon", :service_type => 3, :date => "2011-03-03 17:31:00 UTC")
Customer.create(:id => 4, :customer_id => "z9d02z", :customer_name => "Sara Without the H", :service_type => 4, :date => "2011-03-03 17:31:00 UTC")

# Delete all the services in the Service table before
# add default test data.

Service.delete_all

Service.create(:id => 1, :service_type => "Rotate Tires", :description => "Rotates all four tires on the vehicle, will change old tire with new ones if necessary. The change will be an added cost. The customer can decline.", :price => 150.97)
Service.create(:id => 2, :service_type => "Change Oil", :description => "Change the oil in the vehicle with new oil that the customer brought in. Oil can be purchased with the oil change if the customer didn't bring any.", :price => 25.97)
Service.create(:id => 3, :service_type => "Paint Job", :description => "The old paint will be completely removed before applying new paint. Usually take 1 to 2 weeks.", :price => 320.97)
Service.create(:id => 4, :service_type => "Vehicle Checkup", :description => "The customer's vehicle will go through a series of tests.", :price => 50.97)