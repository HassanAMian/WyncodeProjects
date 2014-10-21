class Quad 
end
 
class Rect < Quad
end
 
class Square < Rect
end
 
class Trap < Quad
end 
 
class Rhomb < Trap
end
 
 
def test
    squa = Square.new
    puts squa.is_a? Rect
    puts squa.is_a? Quad
    
    rect = Rect.new
    puts rect.is_a? Quad

    trap = Trap.new
    puts trap.is_a? Quad

    rhomb = Rhomb.new
    puts rhomb.is_a? Trap
    puts rhomb.is_a? Quad
end
 
test 
