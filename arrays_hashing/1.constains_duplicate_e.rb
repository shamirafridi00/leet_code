=begin

Given an integer array nums, return true if any value appears at least twice in the array,
and return false if every element is distinct.
end

Example 1:

Input: nums = [1,2,3,1]
Output: true
Example 2:

Input: nums = [1,2,3,4]
Output: false
Example 3:

Input: nums = [1,1,1,3,3,4,3,2,4,2]
Output: true

=end


require 'set'

def contains_duplicate(nums)
    seen = Set.new

    nums.each do |number|

        return true if seen.include?(number)
        seen.add(number)
    end

      false

end

p contains_duplicate([1,2,3,1])
