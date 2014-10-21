###### This program contains questions and answers for Ruby Syntax, Data Types, Intro to Boolean Logic, and Ruby Programs ######

#### Ruby Syntax ####

#1+1 : Idiotmatic Arithmetic in Ruby - Ruby (like other programming languages) allows you to express mathmatical concepts in more than one way.
puts "Let's start with an easy one. Write 1 + 1 in two different, but equivalent ways.\n" 
puts "1. + (1), (1). + 1\n\n"

#Float Money : Using Float when dealing with money can lead to fractional currency and rounding errors that could add up over enough transactions.  This is why it is better to convert dollars and cents into something other than a Float.
puts "Assume someone buys a product from your website for $33.50. You don't trust float money. Can you think of something you can do to help you keep track of that value?\n"
puts "To avoid float money, you can convert the amount into total cents as an integer using the command (33.50*100).to_i, giving you the value 3350.\n\n"

#Methods Introspection: Introspection is the ability to examine the type/properties for a program to manipulate values/properties/functions of an object at runtime.  This allows you to see what you do with an object so you have an array of options. 
puts "Most things in Ruby are \"introspectable\", meaning you can find out what something is and what it can do. Introspection helps you learn the language. Even a list of 
methods has methods. Output the list of methods available on a list of methods. There should be a sort method in that list. What does it do?\n"
puts "methods.methods lists methods available. methods.methods.sort will sort the list alphabetically.\n\n"

#### Ruby Data Types ####

#Fixnum Bignum: Once a number is large enough, Ruby will return Bignum because it holds integers outside the range of Fixnum.  This number is (2 ** 62).class for some reason.
puts "Type a number large enough such that calling the \"class\" method returns Bignum rather than Fixnum. How many digits long was it?\n"
puts "4611686018427387904.class returns Bignum while 4611686018427387903.class returns Fixnum. It is 19 digits long.\n\n"

#Float Rounding: Ruby rounds to the integer furthest from zero, so for negative numbers are rounded down.
puts "If you round -1.5, is the answer -1 or -2?\n"
puts "-2\n\n"

#String Comparisons: Since computers only understand numbers, they assign a number value to every letter in the alphabet (character encoding). The value for a letter is obtained using the codepoints method, which converts a string to it's number value.
puts "Which is \"greater\", \"A\" or \"a\"?\n"
puts "Output is true for \"a\" > \"A\" and false for \"A\" > \"a\". \"a\".codepoints is 97 while \"A\".codepoints is 65.\n\n"

#The Next String: The next method gives you the next number in a String, which is the same as adding 1 to a value.
puts "What does the \"next\" method do to a String? What happens when you use that method on \"z\" and \"Z\"?\n"
puts "The next method would advance the character one alphanumeric progression to the right (A to B, B to C, 1 to 2, 2 to 3, etc). Since Z is the last letter in the alphabet, the next item would be AA.\n\n"

#Another String Concatenation: There are a few way to concatenate (add a string to the end of an existing one) beside the concat method. There is the += method or the preferred << method.
puts "The String concat method is short for \"concatenation\". What other String method is an even shorter version of concat?\n"
puts "<<\n\n"

#Length vs. Size: In cases of an Array or String, size and length methods have the same effect.
puts "What's the difference between a String's \"length\" and a String's \"size\"?\n"
puts "There is no difference between string length and size.\n\n"

#Too__Many__Spaces: The gsub method that I used involves a regular expression and it's replacement, but the question asks you to use Ruby String documentation, which would have been the squeeze method.
puts "Sometimes I type too   many   spaces  between   words. According to Ruby String documentation, what one line of code can replace all my double and triple spaces?\n"
puts "\p \"Sometimes I type too many spaces between words\".gsub(/ +/,' ')\n\n"

#Rationals: Rational numbers are created using the command Rational (numerator, denominator)
puts "1-1.0/3 produces the wrong answer because it uses Floats. But Ruby's standard library contains soemthing called a \"rational\" that can express \"1/3\" correctly. Can 
you rewrite the expression 1-1/3 so that it returns the correct result?\n"
puts "1 - Rational(1,3)\n\n"

#String to Number: Converting a String to an integer will return 0 because you can only convert a number to an integer.
puts "What happens when I try to convert the letter A into a Fixnum?\n"
puts "when you attempt to convert \"A\" into an integer it returns 0\n\n"

#O Christmas Tree: String and escape characters using spaces can create "images"
puts "Use a String and escape characters to print a Christmas tree. Make some of your own String art as well.\n"
puts"" "*8+?*;9.times{|i|puts\"%8s0\"%(v=?0*i)+v}\n\n"

#Tab Length: Tab length is the number of spaces that the tab command returns.
puts "How many spaces long is the tab escape character? Show us how you figured it out.\n"
puts "8 spaces long. I figured it out by entering print \"000000000\n\t00000\" and counting the number of spaces at the beginning of the second line.\n\n"

#Alert Limit: There is a limit to the amount of alerts that will be returned in a single line of code in Ruby.
puts "How many alerts can you print n a single line before Ruby starts to ignore you for being too annoying?\n"
puts "five times\n\n"

#Nil Math: Unless nil is defined, Ruby does not assume a numeric value for it.
puts "What happens when I try the following Ruby expression 1+nil? What do you think the error means?\n"
puts "You get TypeError: nil can't be coerced into Fixnum. This is because nil is not a number.\n\n"

#Push or Push: The push method will return different values depending on how the Method parimeters that are set.
puts "What's the difference between these two lines of code:\n[1,2,3].push(1.2.3)\n[1,2,3].push([1,2,3])\n"
puts "[1,2,3].push(1,2,3) creates one array, [1,2,3].push([1,2,3]) creates an array within an array.\n\n"

#Split Join: An Array's join method will join return each element of the array as a string.  When no separator parimeter is set, the elements are just combined into a single string with no spacing between them.  The String split method returns an array of the object's substrings, which are based on separarators such as ',' or whitespace.
puts "Using a combination of Array's join method and String's split method, write a line of code that convers [1,2,3] into [\"1\",\"2\",\"3\"].\n"
puts "[1,2,3].join(\",\").split(\",\")\n\n"

#String vs. Symbol: A String object has more methods than a Symbol.
puts "How many methods does a String have that a Symbol doesn't?\n"
puts "88\n\n"

#Symbol vs. String: A Symbol object has two methods that a String does not.
puts "How many methods does a Symbol have that a String doesn't?\n"
puts ":a.methods - \"a\".methods gives you two methods (:id2name, :to_proc)\n\n"

#All the Symbols: This question goes over how to list an array of Symbols in the Symbol table using the .all_symbols method.
puts "Based on your understanding of how Symbols work, what do you think the Array Symbol.all_symbols represents? How would you add a Symbol to this Array?\n"
puts "Symbol.all_symbols would give you an array of all the symbols. To add a symbol to the array, you would use Symbol.all_symbols.insert (:whatever).  It is also added any time you add a new symbol\n\n"

#O.G. Hash: A Hash can be written using a => or : to separate the key and value.
puts "Write this Hash in another way: {a:1,b:2}\n"
puts "{:a => 1, :b => 2}\n\n"

#Hash Genetics: When you merge two Hash classes, the second method that is merged overrides any values with the same key.
puts "Create a Hash that represents you: hair color, eye color, gender, etc. Create antoher Hash represnenting your (ideal?) significant other. Figure out how to combine 
those two Hashes into a single Hash representing your (imaginary?) child. How would you write that expression to guarantee your child inherits your traits?\n"
puts "sigother = {\"hair\" => \"red\", \"eyes\" => \"green\", \"gender\" => \"female\"}\nmyfeatures = {\"hair\" => \"black\", \"eyes\" => \"brown\", \"gender\" => \"male\"}\nchild = sigother.merge(myfeatures)\nYou can ensure your child will inherit your values by using the same key names for both hashes and creating your hash second, overwriting the first hash values.\n\n"

#2D Arrays: This question goes over how to concat two arrays into one.
puts "Write a 1-line Ruby expression to convert this Array: [[1,2,3],[:a,:b:c]] into this Array: [1,2,3,:a,:b,:c]\n"
puts "[1,2,3].concat ([:a, :b, :c])\n\n"

#### Boolean Logic ####

#Captain De Morgan: De Morgan's law proved that the outcome of !(A||B) = !A&&!B
puts "Use a truth table to prove De Morgan's Law. Show that \"not (A or B)\" equals \"not A and not B\".\n"
puts "(based on LN table), not (A || B) = 0, 0, 0, 1 not A && not B = 0, 0, 0, 1 (bottom right on both are true)\n\n"

#Boolean Hack: This involves the rule for OR statements, which is that if both arguments return false, the result will be false.
puts "In a single boolean expression I want to check if an Array contains a last item. If it does, I want to output it. Otherwise, I want to output the first item. But this 
code isn't working. Can you explain why?\n[1,2,nil].last or [1,2,nil].first\nExpected result: nil\nActual result: 1\n"
puts "The only way way to get “or” statements to return false is if both arguments are false. Since [1,2,nil].first gives an output of 1, the answer will be 1 even if the other array is nil.\n\n"

#Boolean Expressions Quiz: This question tested our understanding of && and || statements and their results.
puts "What's the value of these boolean expressions?:\na || b && c\na && (b || c)\na || !(b || c)\n(a && b) || (d && c)
Calculate the result for a = true, b = false, c = true, d = true\n"
puts "a or b and c - true, a and (b or c) - true, a and not (b or c) - false, (a and b) or (d and c) - true\n\n"

#### Ruby Programs ####

#Puts Hash: To output a Hash to a string, you must enclose it in ().
puts "This line of code isn't working for me. Can you fix it?\nputs {a:1.b:2}\n"
puts "You would have to use puts ({a:1,b:2}) to output the as a String.\n\n"

#Puts Array: The puts statement will return the code as it would be seen by the end user, while p is useful for the developer in debugging because it will return the command exactly as it is written.
puts "What's the difference between the output of these two lines of code and why?\nputs [1,2,3]\np [1,2,3]\n" 
puts "puts [1,2,3] will list the values individually, while p [1,2,3] will output data as it is written in the code - [1,2,3], while puts will output string data in the same way as print. Since [1,2,3] is not written as a string it will output each number individually.\n\n"
