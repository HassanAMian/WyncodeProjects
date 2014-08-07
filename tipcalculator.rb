
def whatself
	p self.class 
end

whatself

puts "What is your bill? "
bill = gets.to_f
puts "How many people in your party? "
num_people = gets.to_i
tip_percent = 0.20
tip = bill * tip_percent
total = bill + tip
my_share = total / num_people
puts "Your total share is #{my_share}"