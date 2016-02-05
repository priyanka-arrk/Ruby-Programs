# Program for Employee Details
# Author: Priyanka Patil
# Date Created: 05/02/2016

class Employee
	@Employee_id=0
	@Employee_name=nil
	@Employee_designation=nil
	@Employee_DOJ=nil
	@Employee_Salary= 0
	@Employee_experience=0.0
	@Employee_qualification=nil
	@Employee_contact_no=0
	@office_email=nil

	def add_information
		puts "-------READING EMPLOYEE INFORMATION-------"
		puts "Enter the Employee_id?"
		@Employee_id= gets.to_i

		puts "Enter the name of Employee"
		@Employee_name=gets

		puts "Enter Employee's Designation"
		@Employee_designation=gets

		puts "Enter the Date of Joining"
		@Employee_DOJ=gets

		puts "Enter the salary"
		@Employee_Salary=gets.to_i

		puts "Enter the Experience"
		@Employee_experience=gets.to_f

		puts "Enter the qualification"
		@Employee_qualification = gets

		puts "Enter Employee's Contact Number"
		@Employee_contact_no=gets.to_i

		puts "Enter Employee's Email-id"
		@office_email=gets
	end

	def display_information

		puts " "
		puts " --------0-0-0-0-0---EMPLOYEE INFORMATIION ---0-0-0-0----------"

		puts "Employee ID= #{@Employee_id}"
		puts "Employee Name = #{@Employee_name}"
		puts "Designation = #{@Employee_designation}"
		puts "Date of Joining = #{@Employee_DOJ}"
		puts "Employee Salary = #{@Employee_Salary}"
		puts "Experience in years = #{@Employee_experience}"
		puts "Qualification = #{@Employee_qualification}"
		puts "Contact Number = #{@Employee_contact_no}"
		puts "Employee's Email-id = #{@office_email}"
	end
end

obj= Employee.new
obj.add_information
obj.display_information

