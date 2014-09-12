class Employee

	def initialize(id, fname, lname, birtdate, hiredate, department, salary)
		@id = id
		@fname = fname
		@lname = lname
		@birthdate = birthdate
		@hiredate = hiredate 
		@department = department
		@salary = salary
		end

	attr_reader :id, :fname, :lname, :birthdate, :hiredate, :department, :salary

	def full_name
		@fname + ' ' + @lname
	end

	def days_employed
		Time.now - @hiredate
	end
end

class Sales < Employee
	def initialize(goal, sales_to_date, accounts, deals)
		@goal = goal
		@sales_to_date = sales_to_date
		@accounts = accounts
		@deals = deals
	end

	attr_reader :goal, :sales_to_date, :accounts, :deals

	def goal_status
		if @goal > @sales_to_date
			underage = @goal - @sales_to_date
			"Under goal by #{underage}"
		elsif @goal = @sales_to_date
			'At goal'
		else
			overage = @sales_to_date - @goal
			"Over goal by #{overage}"
		end
	end

	def avg_account_size
		@sales_to_date / @accounts
	end

	def avg_deal_size
		@sales_to_date / @deals
	end

end
