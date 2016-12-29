#Sort (v)
def sort(v)
	v2 = Array.new(v)
	arrayLength=v.length
	#continuos loop 
	loop do
		flag=false
		(arrayLength-1).times do |var|
			#if the index var is bigger then the next index...
			if v2[var] > v2[var+1]
				#swap the elemetns of the array
				v2[var], v2[var+1] = v2[var+1], v2[var]
				#flag remains true
				flag = true
			end
		end
		#if there is no swap detected then break infinite loop
		break if flag == false
	end
return v2
end


print array = [2, 4, 6, 1, 0, 1, 6, 3 ,2]
puts
print sort(array)




