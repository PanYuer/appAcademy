# Write a method most_vowels that takes in a sentence string
# and returns the word of the sentence that contains the most vowels.

def most_vowels(sentence)
	counts = {}

  words = sentence.split(" ")
  words.each { |word| counts[word] = count_vowels(word) }
  # {"what"=> 1, "a"=> 1, "wonderful"=> 3, "life"=> 2}
  sorted = counts.sort_by { |k,v| v }
  return sorted[-1][0] # -1: the last element   0: the key
end

def count_vowels(word)
  vowels = "aeiou"
  count = 0
  word.each_char do |char|
    if vowels.include?(char)
      count += 1
    end
  end
  return count
end

print most_vowels("what a wonderful life") #=> "wonderful"
