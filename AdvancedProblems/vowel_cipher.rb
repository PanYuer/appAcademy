# Write a method vowel_cipher that takes in a string and returns a new string where
# every vowel becomes the next vowel in the alphabet.

def vowel_cipher(string)
	vowels = "aeiou"

  new_vowel = string.split("").map do |char|
    if vowels.include?(char)
      prev_idx = vowels.index(char)
      new_idx = (prev_idx + 1) % vowels.length
      vowels[new_idx]
    else
      char
    end
  end
  return new_char.join("")
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap
