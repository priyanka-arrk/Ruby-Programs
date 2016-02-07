class Fibonacci
  def fibonacci_series
  	puts "Enter the number for which you want to find the fibonacci series"
 	number=gets.chomp.to_i
 	puts "Fibonacci Series : "
 	num1=0
 	num2=1
 	sum=0
 	puts num1
	puts num2
 	while sum<number do
 	  sum= num1+num2
 	  puts sum
 	  num1=num2
 	  num2=sum
 	end
  end
end
series=Fibonacci.new
series.fibonacci_series