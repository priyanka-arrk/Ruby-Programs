=begin
Program for  Cheking Palindrome Number
Author: Priyanka Patil
Date Created: 11/02/2016
=end
class Palindrome
  def check_palindrome
	puts "enter the number to check"
	number = gets.chomp.to_i
	sum = 0
	remainder = 0
	temp = number
	while (number > 0) do
	  remainder = number%10
   	  sum = (sum*10)+remainder  
      number = number/10  
    end
    if temp==sum    
   	  puts "#{temp} is a palindrome number "    
    else    
   	  puts "#{temp} is not a palindrome number"
    end
  end
end
palindrome1=Palindrome.new
palindrome1.check_palindrome