class Employee
	attr_accessor :choice, :employee_id,:employee_name,:employee_designation,:employee_doj,:employee_salary,:employee_experience,:employee_contact_no,:office_email
	puts "==========================="
	puts "Employee Information Record"
	puts "==========================="
	
	def initialize
		@choice=choice
  	@employee_id = employee_id
	  @employee_name = employee_name
	  @employee_designation = employee_designation
	  @employee_doj = employee_doj
	  @employee_salary = employee_salary
	  @employee_experience = employee_experience
	  @employee_contact_no = employee_contact_no
	  @office_email = office_email
	  @emp_hash=Hash.new
	 	@key = 1
	end
	def operations 
		begin
		puts " Selct the operation"
		puts "1. Add Employee"
		puts "2. Display Employee"
		puts "3. Update Employee"
		puts "4. Delete Employee"
		@choice = gets.chomp.to_i
		case @choice
		when 1
			add_employee
			@emp_hash[@key]=@emp
			@key+=1
		when 2
			display_employee
		when 3
			update_employee
		when 4
			delete_employee
		else
			puts "Sorry! You entered Wrong Choice"
		end 	#end of case statement
  	end while @choice < 5
	end 	#end of operations method
	def add_employee
	  puts "============================== "
	  puts "READING EMPLOYEE INFORMATION"
	  puts "============================== "
	  puts "Enter the employee ID"
	  @employee_id= gets.chomp.to_i
	  puts "Enter the name of employee"
	  @employee_name=gets.chomp
	  puts "Enter employee's Designation"
	  @employee_designation=gets.chomp
	  puts "Enter the Date of Joining"
	  @employee_doj=gets.chomp
	  puts "Enter the salary"
	  @employee_salary=gets.chomp.to_i
	  puts "Enter the experience"
	  @employee_experience=gets.chomp.to_f
	  puts "Enter employee's Contact Number"
	  @employee_contact_no=gets.chomp.to_i
	  puts "Enter employee's email-id"
	  @office_email=gets.chomp
	  #creating the key value pairs for hash
	  @emp = Hash.new
	  @emp[:employee_id] = @employee_id
	  @emp[:employee_name] = @employee_name
	  @emp[:employee_designation]= @employee_designation
	  @emp[:employee_doj]=@employee_doj
	  @emp[:employee_salary]=@employee_salary
	  @emp[:employee_experience]=@employee_experience
	  @emp[:employee_contact_no]=@employee_contact_no
	  @emp[:office_email]=@ffice_email
	end #end of add employee method
	def display_employee
			puts "enter the employee id for which you want to see deatails"
			@id= gets.chomp.to_i
			#a= @emp_hash.each_pair{|key,hash| hash[:employee_id]==@id}
			a= @emp_hash.select{|key,hash| hash[:employee_id]==@id}
			a.select {|key,value| puts "#{value}" }
	end
	def delete_employee
		puts "enter the employee id to delete employee information"
		@id= gets.chomp.to_i
		@emp_hash.delete_if{|key,hash| hash[:employee_id]==@id}
		puts " Employee #{@id} is deleted"
	end 	#end of delete_employee method
	def update_employee
		#method definition
	end
end 	#end of class									

employee= Employee.new
employee.operations
