# Write a method o_words that takes in a sentence string and
# returns an array of the words that contain an "o". Use select in your solution!


def o_words(sentence)
  	selected_words = sentence.split(" ").select {|word| word.include?("o")}
  	return selected_words
end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts
