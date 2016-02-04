=begin
Program for Calculator
Author: Priyanka Patil
Date Created: 05/02/2016
=end
class Calculator
	attr_accessor :number1, :number2
	def initialize
	  @num1=number1
	  @num2=number2
	
	end
	def sum_average
		array=Array.new
		sum =0
		puts "-----SUM AND AVERAGE------"
		puts "How many numbers do you want to add?"
		n = gets.to_i
		puts "enter #{n} numbers"
		for i in (0...n)
  			array[i]=gets.to_i
  			sum=sum+array[i]
		end
		puts " addition of #{array} is #{sum}"
		average=sum/n
		puts "Average of #{array} = #{average}"
	end

	def subtract
		puts "-------SUBTRACTION----"

		puts "Enter first number"
		@num1 = gets.to_i
		puts "Enter second number"
		@num2 = gets.to_i

		puts "#{@num1} - #{@num2} = #{@num1-@num2}"

	end

	def multiplication
		array=Array.new
		result =1
		puts "-----MULTIPLICATION------"
		puts "How many numbers do you want to multiply?"
		n = gets.to_i
		puts "enter #{n} numbers"
		for i in (0...n)
  			array[i]=gets.to_i
  			result = result*array[i]
		end
 	
		puts " multiplication of #{array} is #{result}"
	end

	def division
		result=0
		puts "-------DIVISION----"
		puts "Enter first number"
		@num1 = gets.to_i
		puts "Enter second number"
		@num2 = gets.to_i

		puts "#{@num1} / #{@num2} = #{@num1/@num2}"
	end

	def power
		puts "-------POWER------"
		puts "Enter the number"
		@num1= gets.to_i
		puts "Enter the power"
		@num2= gets.to_i

		puts "#{@num1} ** #{@num2} = #{@num1**@num2}"
	end
end

calculator= Calculator.new
calculator.sum_average
calculator.subtract
calculator.multiplication
calculator.division
calculator.power