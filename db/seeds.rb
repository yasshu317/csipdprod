# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding Employees......"
["Ramya Yanamaddi", "Vijay Ankareddi", "Srinibas Velumuri", "Venkat Tunuguntla", 
"Swetha", "Ram Swaroop", "Raghu ", "Viswanth chandrasekahar Menda", "Hima Kondepati", 
"Soumya", "Raju Bogi", "Vinod Chanyara", "Vishnu Boddeboina", "Veera Rani Patcha", 
"Kriti Jaiswal", "Swathi Mettu", "Prathibha chilakaraju", "Srinivas Mummaneni", 
"Lavanya pasupuleti", "Kiran Vadlamudi", "Madhu Latha"].each do |x|
	Employee.find_or_create_by(name: x)
end
