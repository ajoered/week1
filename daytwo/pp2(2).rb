
class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        super(name, email)
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      @hourly_rate * @hours_worked
    end
end

class SalariedEmployee < Employee
	def initialize(name, email, salary)
		super(name, email)
		@salary = salary
	end

	def calculate_salary
		@salary/52
	end
end

class MultiPaymentEmployee < Employee
	def initialize(name, email, base, hourly_rate, hours_worked)
		super(name, email)
		@base = base
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end

	def calculate_salary
		@base + (@hourly_rate*(@hours_worked-40))
	end
end

class Payroll
	def initialize(employees)
		@employees = employees
	end

	def pay_employees
		@employees.map { |e| puts "#{e.name} -> " + ((e.calculate_salary*0.82).round(2)).to_s   }
	end

	def notify_employees
      @employees.map { |e| puts "We are paying #{e.name} #{(e.calculate_salary*0.82).round(2)}€ this month. Send salary to #{e.email} so he can buy some food"  }
  	end
end




josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
alvaro = HourlyEmployee.new('Alvaro', 'alvaro@gmail.com', 15, 80)
jose = HourlyEmployee.new('Jose', 'jose@gmail.com', 15, 80)


employees = [josh, nizar, ted, alvaro, jose]
payroll = Payroll.new(employees)
payroll.notify_employees


