class Array 


def limited?(amin, amax)
	self.each do |i|
	#if any element in the array has less than min or more than max
	  	if i <=amin || i>=amax
			return false
  		end
	end
return true
end


def sorted?
#	puts i
	#execute only if  the length of array is more than one 
	if self.length > 1
		#if index 1 is bigger then index 0
		if self[0] >= self[1]
			#for each next decreasing element
			(2..self.length-2).each do |i|
					#if no continous increase return 0
				if self [i] < self[i+1]
					return 0
				end
			end
		#if there is nothing found that indicates not decreasing
		return -1
		end	
		if self[0] <= self[1]
			#for each increasing element
			(2..self.length-2).each do |i|
				if self[i] >self[i+1]
					return 0
				end
			end
		#if it is sorted, then the array is in increasing order
		return 1
		end
	end
end

#end definition of array class
end

a=[1,2,3,4,5,6,7,8,9,10]
b=[10,9,8,7,6,5,4,3,2,1]
c=[3,8,9,102,42,512,452,125]

puts a.limited?(1,10)
puts b.limited?(0,11)
puts c.limited?(0,100)
puts "1 = Increasing, -1 is Decreasing, 0 is unsorted"
puts a.sorted? 
puts b.sorted?
puts c.sorted?
