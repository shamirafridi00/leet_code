=begin

Given an array of strings strs, group the anagrams together. You can return the answer in any order.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.



Example 1:

Input: strs = ["eat","tea","tan","ate","nat","bat"]
Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
Example 2:

Input: strs = [""]
Output: [[""]]
Example 3:

Input: strs = ["a"]
Output: [["a"]]

=end



def group_anagrams(strs)
  anagrams = Hash.new { |h, k| h[k] = [] }

  strs.each do |word|
    sorted_word = word.chars.sort.join
    anagrams[sorted_word] << word
  end

  anagrams.values
end

# Example usage:
strs = ["eat", "tea", "tan", "ate", "nat", "bat"]
output = group_anagrams(strs)
puts output.inspect
