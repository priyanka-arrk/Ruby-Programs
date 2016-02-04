=begin
 Program for employee Details
 Author: Priyanka Patil
 Date Created: 05/02/2016
=end

class Employee
	@employee_id=0
	@employee_name=nil
	@employee_designation=nil
	@employee_doj=nil
	@employee_salary= 0
	@employee_experience=0.0
	@employee_qualification=nil
	@employee_contact_no=0
	@office_email=nil
	def add_employee
		puts "============================== "
		puts "READING EMPLOYEE INFORMATION"
		puts "============================== "
		puts "Enter the employee ID"
		@employee_id= gets.to_i
		puts "Enter the name of employee"
		@employee_name=gets
		puts "Enter employee's Designation"
		@employee_designation=gets
		puts "Enter the Date of Joining"
		@employee_doj=gets
		puts "Enter the salary"
		@employee_salary=gets.to_i
		puts "Enter the experience"
		@employee_experience=gets.to_f
		puts "Enter the qualification"
		@employee_qualification = gets
		puts "Enter employee's Contact Number"
		@employee_contact_no=gets.to_i
		puts "Enter employee's email-id"
		@office_email=gets
	end
	def display_employee

		puts "============================== "
		puts "EMPLOYEE INFORMATIION"
		puts "============================== "
		puts "employee ID : #{@employee_id}"
		puts "employee Name : #{@employee_name}"
		puts "Designation : #{@employee_designation}"
		puts "Date of Joining : #{@employee_doj}"
		puts "employee Salary : #{@employee_salary}"
		puts "experience in years : #{@employee_experience}"
		puts "Qualification : #{@employee_qualification}"
		puts "Contact Number : #{@employee_contact_no}"
		puts "employee's email-id : #{@office_email}"
		puts "============================== "
	end
end
employee= Employee.new
employee.add_employee
employee.display_employee