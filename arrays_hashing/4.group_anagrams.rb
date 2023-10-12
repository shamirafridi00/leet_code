def group_anagrams(strs)
  anagram_hash = {}

  strs.each do |word|
    # Sort the word to use it as a key in the hash
    sorted_word = word.chars.sort.join
    puts sorted_word

    # Check if the sorted word is already a key in the hash
    if anagram_hash.key?(sorted_word)
      # If it is, add the word to the existing group
      anagram_hash[sorted_word] << word
      puts anagram_hash
    else
      # If not, create a new group with the sorted word as the key
      anagram_hash[sorted_word] = [word]
      puts anagram_hash
    end
  end

  # Convert the hash values to an array to get the final result
  result = anagram_hash.values
end

# Example usage:
strs = ["eat", "tea", "tan", "ate", "nat", "bat"]
output = group_anagrams(strs)
puts output.inspect
