# Write a method two_d_translate that takes in a 2 dimensional array and
# translates it into a 1 dimensional array. You can assume that the inner
# arrays always have 2 elements. See the examples.

def two_d_translate(arr)
	new_arr = []
  	arr.each do |subArray|
			# ele = subArray[0]
			# num = subArray[1]
			# num.times do {new_arr << ele}
      subArray[1].times do
        new_arr << subArray[0]
      end
    end
  	return new_arr

end

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts
