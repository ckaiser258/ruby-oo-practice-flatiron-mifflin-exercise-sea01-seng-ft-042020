require "pry"

class Manager
    attr_accessor :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select do |employee|
            employee.manager_name == self.name
        end
    end

    def hire_employee(name, salary)
        new_employee = Employee.new(name, salary, self.name)
    end

    def self.all_departments
        Manager.all.map do |manager|
            manager.department
        end
    end

    def self.average_age
        ages = []
        Manager.all.each do |manager|
            ages << manager.age
        end
        average_age = ((ages.sum / ages.length).to_f)
        average_age
    end

end
