
class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
    	(@hours_worked * @hourly_rate)*1.18
    end
end

class SalariedEmployee < Employee
	def initialize(name, email, salary)
		super(name, email)
		@salary = salary
	end

	def calculate_salary
		(@salary/52)*1.18
	end
end

class MultiPaymentEmployee < Employee
	def initialize(name, email, base_salary, hourly_rate, hours_worked)
		super(name, email)
		@base_salary = base_salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end

	def calculate_salary
		((@base_salary/52) + (@hourly_rate * (@hours_worked-40)))*1.18
	end
end

class Payroll
    def initialize(employees)
        @employees = employees
    end

  	def pay_employees
  		@employees.map {|employee| puts "#{employee.name} costs #{employee.calculate_salary.round(2)}€ monthly"}
  	end

  	def notify_employee
        @employees.map {|employee| puts "An email has been sent to #{employee.name} at #{employee.email}. He will be paid #{employee.calculate_salary.round(2)}€ and can now eat!"}
  	end 
 end





josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
alvaro = HourlyEmployee.new('Alvaro', 'alvaro@gmail.com', 15, 80)
jose = HourlyEmployee.new('Jose', 'jose@gmail.com', 15, 80)


employees = [josh, nizar, ted, alvaro, jose]
payroll = Payroll.new(employees)
payroll.pay_employees
payroll.notify_employee

