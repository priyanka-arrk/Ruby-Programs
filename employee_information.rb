=begin
 Program for performing operations on employee details
  Author: Priyanka Patil
 Date Created: 05/02/2016
=end
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
			puts "Sorry! You Entered Wrong Choice"
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
	  @emp[:office_email]=@office_email
	end #end of add employee method
	def display_employee
		puts "============================== "
	  puts "DELETE EMPLOYEE INFORMATION"
	  puts "============================== "
			puts "enter The Employee id For Which You Want To See Details"
			@id= gets.chomp.to_i
			a= @emp_hash.select{|key,hash| hash[:employee_id]==@id}
			a.select {|key,hash| 
				puts "Employee id : #{hash[:employee_id]}"
				puts "Employee Name : #{hash[:employee_name]}"
	 			puts "Designation : #{hash[:employee_designation]}"
	  		puts "Date of Joining : #{hash[:employee_doj]}"
	  		puts "Employee Salary : #{hash[:employee_salary]}"
	  		puts "Experience in years : #{hash[:employee_experience]}"
	  		puts "Contact Number : #{hash[:employee_contact_no]}" 
	 			puts "Employee's email-id : #{hash[:office_email]}"}
	end
	def delete_employee
		puts "enter the employee id to delete employee information"
		@id= gets.chomp.to_i
		@emp_hash.delete_if{|key,hash| hash[:employee_id]==@id}
		puts " Employee #{@id} is deleted"
	end 	#end of delete_employee method
	def update_employee
		puts "============================== "
	  puts "UPDATE EMPLOYEE INFORMATION"
	  puts "============================== "
		puts "Enter The Employee id For Which You Want To Update Details"
		@id= gets.chomp.to_i
		puts " Which Information do you want to update"
		puts "1. Employee name"
		puts "2. Employee Designation"
		puts "3. Date of Joining"
		puts "4. Salary"
		puts "5. Experience"
		puts "6. Contact Number"
		puts "7. Office Email"
		info = gets.chomp.to_i
		case info
			when 1
				puts "enter the new name"
				name = gets.chomp
				@emp_hash.each do |key,hash| 
					hash[:employee_name]= name if hash[:employee_id]==@id
					puts hash
				end
				puts "Name of employee #{@id} is updated #{name}"
			when 2
				puts "Enter new Designation"
				designation = gets.chomp
				@emp_hash.each do |key,hash| 
					hash[:employee_designation] = designation if hash[:employee_id]==@id
				end
				puts "Designation of employee #{@id} is updated to #{designation}"
			when 3
				puts "Enter new Date of Joining"
				doj=gets.chomp
				@emp_hash.each do |key,hash| 
					hash[:employee_doj]= doj if hash[:employee_id]==@id
				end
				puts "Date of Joining of employee #{@id} is updated to #{doj}"
			when 4
				puts "Enter new salary"
				salary=gets.chomp.to_i
				@emp_hash.each do |key,hash| 
					hash[:employee_salary]= salary if hash[:employee_id]==@id
				end
				puts "Salary of employee #{@id} is updated to  #{salary}"
			when 5
				puts "Enter new Experience in years"
				experience=gets.chomp.to_i
				@emp_hash.each do |key,hash| 
					hash[:employee_experience]= experience if hash[:employee_id]==@id
				end
				puts "Experience of employee #{@id} is updated to  #{experience}"
			when 6
				puts "Enter new Contact Number"
				contact_no=gets.chomp.to_i
				@emp_hash.each do |key,hash| 
					hash[:employee_contact_no]= contact_no if hash[:employee_id]==@id
				end
				puts "Contact Number of employee #{@id} is updated to  #{contact_no}"
			when 7
				puts "Enter new email-id"
				email=gets.chomp
				@emp_hash.each do |key,hash| 
					hash[office_email]= email if hash[:employee_id]==@id
				end
				puts "Email id of employee #{@id} is updated to  #{email}"
			else 
				puts "You Entered Wrong Choice"
			end
	end 	#end of update_employee method
end 	#end of class									
employee= Employee.new
employee.operations
