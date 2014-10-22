# FizzBuzz for Ruby
# Created by Hassan Mian

# Objective: 
# This creates a list of numbers from 1 to 1000.
# For multiples of three return “Fizz”, and for the multiples of five return “Buzz”. 
# For numbers which are multiples of both three and five return “FizzBuzz”.
# Otherwise, return the number.

1.upto(1000) do |i|
      if i % 5 == 0 && i % 3 == 0
        puts "FizzBuzz"
      elsif i % 5 == 0
        puts "Buzz"
      elsif i % 3 == 0
        puts "Fizz"
      else
        puts i
      end
    end 
