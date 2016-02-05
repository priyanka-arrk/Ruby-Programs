# Program for Calculator
# Author: Priyanka Patil
# Date Created: 05/02/2016

class Calculator
	@num1=0
	@num2=0
	def sum_average
		sum =0
		puts "-----SUM AND AVERAGE------"
		puts "How many numbers do you want to add?"
		n = gets.to_i

		ary=Array.new(n)

		puts "enter #{n} numbers"
		for i in (0...n)
  			ary[i]=gets.to_i
  			sum=sum+ary[i]
		end
		puts " addition of #{ary} is #{sum}"

		puts "Average of #{ary} = #{sum/n}"
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
		result =1
		puts "-----MULTIPLICATION------"
		puts "How many numbers do you want to multiply?"
		n = gets.to_i

		ary=Array.new(n)

		puts "enter #{n} numbers"
				for i in (0...n)
  			ary[i]=gets.to_i
  			result = result*ary[i]
		end
 	
		puts " multiplication of #{ary} is #{result}"
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

obj= Calculator.new
obj.sum_average
obj.subtract
obj.multiplication
obj.division
obj.power