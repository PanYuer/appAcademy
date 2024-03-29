# Write a method format_name that takes in a name string and
# returns the name properly capitalized.

def format_name(str)
	words = str.split(" ")
  	new_words = []

  	words.each do |word|
      new_words << word[0].upcase + word[1..-1].downcase
    end
  	return new_words.join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
