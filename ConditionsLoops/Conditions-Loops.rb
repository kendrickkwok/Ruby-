#1 Ruby Conditions 

#if - then statements 

i, j = 5, 101
if i == j then puts "i is equal to j" end 

#if - else statements
if i == j
	puts "i is equal to j" 
else
	puts "i is not equal to j"
end

#if-elseif- else
if i < j
	puts "i is less then j"
elsif i > j
	puts "i is greater than j"
else 
	puts "i is equal to j"
end

#unless | unless-else
unless i==j
	puts "i is not equal to j"
else
	puts "i is equal to j"
end

#if or unless modifiers 
puts "j is 101" if j ==101

puts "j is 101" unless j !=101
puts

#case / case selector 
score = 48
grade = case 
		when score == 60 then "D"
		when score ==70 then "C"
		when score== 80 then "B"
		when score == 90 then "A"
		else puts "You just failed Ha-ha"
	end
puts grade
age = 57
range = case age
		when 20..30 then "young"
		when 30..40 then "getting older.."
		when 40..50 then "old"
		when 50 ..60 then "grandpa"
		else "ancient"
	end
puts range
puts

#2 Ruby Iterator and Loops 

#########---Loops---#########

#while - do 
test = 3
while test > 0 do
	print test,' '
	test = test - 1
end
puts

#until-do
test=3
until test == 6 do
	print test,' '
	test = test + 1
end
puts

#for- in
arr = [1,2,3]
for a in arr
	puts "element in array: #{a}"
end
puts

hash = {:class_name=>"CSC 600", :class_description=>
		"Programming methodology", :section=>"1"}

for key, value in hash 
	puts "#{key}-->#{value}"
end
puts

#########---Iterators---#########
#times
2.times{ puts "Print two times!" }
puts
3.times { puts "Print three times!" }
puts

#each
array = [1, 2, 3]
#for every variable in array, print out each variable
array.each {|var| print var, ' '}
puts 

#upto 
#from nubmer 1 to 3, print the value increasing
1.upto(3){|var| print var, ' '}
puts

#downto
#from number 3, go down to 1 and print the value
3.downto(1){|var| print var, ' '}
puts

#map
#for each number in 1-3, increase value by ten
addTen = (1..3).map{|var| (var+10)}
print addTen, ' '
puts

#collect
#for each number in 1-4, increase value by twenty
print (1..4).collect{|var|(var+20)}, ' '
puts 

#step
#start from 0, iterate to 10 by two 
0.step(10, 2) do |var|
	puts var
end
puts

#select 
#even is when the statement contains true 
even = (6..10).select{|var| var%2==0}
puts even
puts

#reject
#odd is when statement contains false 
odd = (6..10).reject{|var| var%2==0}
puts odd
puts

#loop modifiers 
#while modifier
var = 10
puts var = var+2 while var < 16
puts

#until modifier
var = 0
puts var = var+1 until var ==3







