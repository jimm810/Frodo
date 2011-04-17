# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

puts "Creating initial values for code tables"

["Open", "Closed", "Canceled"].each do |s|
  Status.find_or_create_by_name s
end

["Not Scheduled", "Active", "On Hold", "Complete"].each do |s|
  State.find_or_create_by_name s
end

["Capture", "Index & Assign", "Execute", "Close-out"].each do |s|
  Phase.find_or_create_by_name s
end

["Add-on", "New", "Services Only"].each do |s|
  ContractType.find_or_create_by_name s
end

["Data Conversion", "Custom SW", "Professional Services", "Systems Assurance", "Interface"].each do |s|
  Category.find_or_create_by_name s
end




