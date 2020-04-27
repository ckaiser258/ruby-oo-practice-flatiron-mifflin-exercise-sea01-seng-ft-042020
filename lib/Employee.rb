class Employee
    attr_accessor :name, :salary, :manager_name

    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(num)
        Employee.all.select do |employee|
        employee.salary > num
        end
    end

    def self.find_by_department(department_name)
        Manager.all.find do |manager|
            if manager.department == department_name
                return manager.employees
            end
        end
    end

    def tax_bracket
        Employee.all.select do |employee|
            taxbracket = []
            taxbracket << (self.salary + 1000)
            taxbracket << (self.salary - 1000)
            taxbracket.include?(employee.salary)
        end
    end
end
