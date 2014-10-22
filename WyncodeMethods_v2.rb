###### Wyncode_methods version 2.0 ######

### Method 1. Assume someone buys a product from your website for $33.50. You don’t trust float money. Can you think of something you can do to help you keep track of that value? ###

puts "1. Ruby Syntax: Float Money"
### To avoid float money, you can convert the amount into total cents as an integer using the command (33.50*100).to_i, giving you the value 3350. ### 
def no_float(str)
	(str.to_f) == 0
total_cents = ((str).to_f * 100).to_i
end
 
def test_no_float
p no_float("33.50")
p no_float("20.35")
p no_float("200.05")
p no_float("0.45")
p no_float("6.75")
end
 
test_no_float 
print "\n"

### Method 2. If you round -1.5, is the answer -1 or -2? ###
puts "2. Float Rounding"
### -2 ###
 
def float_round(number)
	number.round if number.respond_to? :round
end
 
def test_float_round 
	puts float_round(-1.5) == -2 
	puts float_round(-12.5) == -12 
	puts float_round(nil) == nil 
end

test_float_round 
print "\n"

### Method 3. Which is “greater”, “A” or “a”? ###
puts "3. String Comparisons"
### Output is true for "a" > "A" and false for "A" > "a". "a".codepoints is 97 while "A".codepoints is 65. ###
 
def compare_strings(str1, str2)
	if str1 > str2
	p true
 else 
 	p false
 	end
 end
 
 
def test_strings 
	puts ("a" > "A") == true
 	puts ("A" > "a") == false
	
end

test_strings
print "\n"

### Method 4. Create a Hash that represents you: hair color, eye color, gender, etc. Create another Hash representing your (ideal?) significant other. Figure out how to combine those two Hashes into a single Hash representing your (imaginary?) child. How would you write that expression to guarantee your child inherits your traits? ###
puts "4. Hash Genetics"
### sig_other = {"hair" => "red", "eyes" => "green", "gender" => "female"} and my_features = {"hair" => "black", "eyes" => "brown", "gender" => "male"} child = sig_other.merge(my_features). You can ensure your child will inherit your values by using the same key names for both hashes and creating your hash second, overwriting the first hash values. ###

def hash_genetics (my_features={}, sig_other={})
 
	if my_features.respond_to? :merge and sig_other.respond_to? :merge
 
		child = sig_other.merge(my_features)
	else
		return "error"
	end
end
 
def test_hash_genetics
	puts hash_genetics({hair: :black}, {hair: :red})
	puts hash_genetics({eyes: :brown}, {eyes: :green})
	puts hash_genetics({gender: :male}, {gender: :female})
	puts hash_genetics({a: :rome}, {a: :venice}) # works with any hash with the same key, but returns the first value
	puts hash_genetics(nil, nil)
	puts hash_genetics(true,false)
	puts hash_genetics("", "")
end
 
test_hash_genetics
print "\n"

### Method 5. Write a 1-line Ruby expression to convert this Array: [[1,2,3], [:a, :b, :c]] into this array [1, 2, 3, :a, :b, :c] ###
puts "5. 2D Arrays"
### [1,2,3].concat([:a, :b, :c]) ###

def concat_array(array1, array2)
	array1.concat (array2)
end
 
def test_concat_array 
	print concat_array([1,2,3], [:a,:b,:c])
end 
 
test_concat_array

