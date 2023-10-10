=begin
Given two strings s and t, return true if t is an anagram of s, and false otherwise.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.



Example 1:

Input: s = "anagram", t = "nagaram"
Output: true
Example 2:

Input: s = "rat", t = "car"
Output: false


=end


def is_anagram(s, t)
  if s.length != t.length
    return false
  end

  # Create two hash maps to store character frequencies for s and t
  s_freq = Hash.new(0)
  t_freq = Hash.new(0)

  # Count character frequencies in s
  s.each_char do |char|
    s_freq[char] += 1
  end

  # Count character frequencies in t
  t.each_char do |char|
    t_freq[char] += 1
  end

  # Compare the character frequencies in both hash maps
  return s_freq == t_freq
end

# Test case
puts is_anagram("aacc", "ccac")
