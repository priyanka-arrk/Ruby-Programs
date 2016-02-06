=begin
Prgroam for datatype conversion
Created by: Priyanka Patil
Date: 10-Feb-2016
=end

# coversion of integer to string
 a=10
 puts "number is: #{a}"
 string_a= a.to_s   
 puts "after converting number into string, value is: #{string_a}"
#conversion of string to integer
str1= "hello"
puts "string is : #{str1}"
number1=str1.to_i
puts "after converting string to integer value is: #{number1} "
str2="10"
puts "string is : #{str2}"
number2=str2.to_i
puts "after converting string to integer value is: #{number2}"
#conversion of string to array
ip="192.168.12.122"
puts "string is : #{ip}"
array1= ip.split(".")
puts "after converting ip_addres_string to string_array, the array is : #{array1}"
array2= ip.split(".").map {|x| x.to_i}
puts "after converting ip_addres_string to integer_array, the array is : #{array2}"
#conversion of array to string
array1= [192,168,1,120]
puts "array is : #{array1}"
string_ip= array1.join(".")
puts "after converting array to string, the string is : #{string_ip}"
array2= ["hello","welcome","to","arrk"]
puts "array is : #{array2}"
string_st= array2.join(" ")
puts "after converting array to string, the string is : #{string_st}"
#conversion from array to hash
array1=[10,20,30,40,50,60]
puts "array is : #{array1}"
hash1 = Hash[*array1]
puts "after converting array to hash, the hash  is : #{hash1}"
#conversion from hash to array
hash1=  {10: 20, 30: 40, 50: 60}
puts "array is : #{array1}"
array1=hash1.to_a
puts "after converting hash to array, the array  is : #{array1}"