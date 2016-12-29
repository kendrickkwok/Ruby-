#3. Function mean_sigma(v)
def mean_sigma(v)
	sumArray = 0
	v.each do |x|
		sumArray = sumArray + x
	end

	mean = sumArray / v.length
	
	#Standard deviation = SQRT((x-mean^2)/length))
	sumSq = 0
	v.each do |x|
		sumSq = sumSq + ((x-mean)**2)
	end
	standardDev = Math::sqrt (sumSq/v.length)
	
	return mean, standardDev
end

array = [5,10,15,20, 25]
#pass in array into function for prining
puts mean_sigma(array)