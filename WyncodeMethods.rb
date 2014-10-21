module WyncodeMethods

### Method 1. Assume someone buys a product from your website for $33.50. You don’t trust float money. Can you think of something you can do to help you keep track of that value? ###
	def no_float(str)
		(str.to_f) == 0
	total_cents = ((str).to_f * 100).to_i
	end
	
### Method 2. If you round -1.5, is the answer -1 or -2? ###
	def float_round(number)
		number.round if number.respond_to? :round
	end
	
### Method 3. Which is “greater”, “A” or “a”? ###
	def compare_strings(str1, str2)
		if str1 > str2
		p true
 	else 
 		p false
 		end
 	end
 	
### Method 4. Create a Hash that represents you: hair color, eye color, gender, etc. Create another Hash representing your (ideal?) significant other. Figure out how to combine those two Hashes into a single Hash representing your (imaginary?) child. How would you write that expression to guarantee your child inherits your traits? ###
	def hash_genetics (my_features={}, sig_other={})
 
		if my_features.respond_to? :merge and sig_other.respond_to? :merge
 
			child = sig_other.merge(my_features)
		else
			return "error"
		end
	end
	
### Method 5. Write a 1-line Ruby expression to convert this Array: [[1,2,3], [:a, :b, :c]] into this array [1, 2, 3, :a, :b, :c] ###
	def concat_array(array1, array2)
		array1.concat (array2)
	end
end

module WyncodeTests

	def test_no_float
		puts WyncodeMethods.no_float("33.50")
		puts WyncodeMethods.no_float("20.35")
		puts WyncodeMethods.no_float("200.05")
		puts WyncodeMethods.no_float("0.45")
		puts WyncodeMethods.no_float("6.75")
	end

	def test_float_round 
		puts WyncodeMethods.float_round(-1.5) == -2 
		puts WyncodeMethods.float_round(-12.5) == -12 
		puts WyncodeMethods.float_round(nil) == nil 
	end

	def test_strings 
		puts WyncodeMethods.test_strings("a" > "A") == true
 		puts WyncodeMethods.test_strings("A" > "a") == false
	end

	def test_hash_genetics
		puts WyncodeMethods.hash_genetics({hair: :black}, {hair: :red})
		puts WyncodeMethods.hash_genetics({eyes: :brown}, {eyes: :green})
		puts WyncodeMethods.hash_genetics({gender: :male}, {gender: :female})
		puts WyncodeMethods.hash_genetics({a: :rome}, {a: :venice})
		puts WyncodeMethods.hash_genetics(nil, nil)
		puts WyncodeMethods.hash_genetics(true,false)
		puts WyncodeMethods.hash_genetics("", "")
	end

	def test_concat_array 
		print WyncodeMethods.concat_array([1,2,3], [:a,:b,:c])
	end 
end 

module Tests

WyncodeTests.test_no_float 
WyncodeTests.test_float_round 
WyncodeTests.test_strings
WyncodeTests.test_hash_genetics
WyncodeTests.test_concat_array

end
