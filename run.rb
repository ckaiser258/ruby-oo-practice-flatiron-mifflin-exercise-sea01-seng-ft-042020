require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


colton = Manager.new("Colton", "paper", 27)
christina = Manager.new("Christina", "paper", 22)
bob = Manager.new("Bob", "tools", 40)

joe = Employee.new("Joe", 30000, "Christina")
jeff = Employee.new("Jeff", 31000, "Colton")
james = Employee.new("James", 40000, "Colton")

binding.pry
puts "done"
