class Triangle	
	#accessor methods 
	#accessing variables a, b, and c
	attr_accessor :a, :b, :c
	
	def initialize(a,b,c)
	        @a = a 
                @b = b
                @c = c
	#puts “The length of the triangle is”, @a, @b, @c
	end 


	def perimeter
	        #perimeter is last line of code executed, should be the one returned
		#if trying to find a non-existent perimeter with a non-existenet triangle, return
		if @a > @b + @c || @b > @a + @c || @c > @a+@b
			return
		end	   
	@perimeter = @a + @b + @c
	end


	def area
		#area is defined by Math::SQRT (p(p-a)* p(p-b) *p(p-c))
		#p is defined by perimeter / 2 
		#if the area does not exist by a non existent triangle, return 
		if @a > @b + @c || @b > @a + @c || @c > @a+@b
			return
		end
		
		@perimeterDiv = self.perimeter/2
		@area =Math::sqrt(@perimeterDiv*(@perimeterDiv-@a)*(@perimeterDiv-@b)*(@perimeterDiv-@c))
	end 


	def test 
		#Find the triangles to see if it is right,  (1) equilateral, (2) isosceles #(3)scalene, (4) right, and (5) not a triangle 
		@x = " " 
		findTriangle = case
			when @a==@b && @b == @c
			  @x = "equilateral triangle"
			when @a**2 * +@b**2 == @c**2 || @b**2 == @a**2 + @c**2 || @c**2 == @a**2+@b**2 
			  @x= "right triangle"
			when @a==@b || @a == @c || @b == @c 
			  @x ="isosceles triangle"
			when @a > @b + @c || @b > @a + @c || @c > @a+@b
			  @x = "non-existent triangle"
			when @a != @b || @b != @c || @c != a
			  @x = "scalene triangle"
		end
	print findTriangle
	end 
end

tri = Triangle.new(3,4,5)
print "Triangle with the sides of ", tri.a," ", tri.b," ", tri.c, " has a perimeter of ", tri.perimeter, ",",
 "has an area of ", tri.area, ", and is a "
print tri.test
puts

tri2 = Triangle.new(6,5,5)
print "Triangle with the sides of ", tri2.a," ", tri2.b," ", tri2.c, " has a perimeter of ", tri2.perimeter, ",",
 "has an area of ", tri2.area, ", and is a "
print tri2.test
puts

tri3 = Triangle.new(2,2,2)
print "Triangle with the sides of ", tri3.a," ", tri3.b," ", tri3.c, " has a perimeter of ", tri3.perimeter, ",",
 "has an area of ", tri3.area, ", and is a "
print tri3.test
puts

tri4 = Triangle.new(6,7,4)
print "Triangle with the sides of ", tri4.a," ", tri4.b," ", tri4.c, " has a perimeter of ", tri4.perimeter, ",",
 "has an area of ", tri4.area, ", and is a "
print tri4.test
puts

tri5 = Triangle.new(5,1,3)
print "Triangle with the sides of ", tri5.a," ", tri5.b," ", tri5.c, " has a perimeter of ", tri5.perimeter, ",",
 "has an area of ", ", and is a "
print tri5.test
puts


