# This program will countdown to new years 1990 through 2005.

(1990..2005).each { |y|
10.downto(0).map { |n| 
sleep 1
if n == 0
puts "Happy New Years #{y}!"
else
puts "#{n}"
end
}
}
