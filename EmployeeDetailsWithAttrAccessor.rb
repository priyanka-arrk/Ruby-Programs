=begin
 Program for employee Details
 Author: Priyanka Patil
 Date Created: 05/02/2016
=end

class Employee
  attr_accessor :employee_id,:employee_name,:employee_designation,:employee_doj,:employee_salary,:employee_experience,:employee_qualification,:employee_contact_no,:office_email
  	def initialize
  	  @employee_id = employee_id
	  @employee_name = employee_name
	  @employee_designation = employee_designation
	  @employee_doj = employee_doj
	  @employee_salary = employee_salary
	  @employee_experience = employee_experience
	  @employee_qualification = employee_qualification
	  @employee_contact_no = employee_contact_no
	  @office_email = office_email
  	end
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