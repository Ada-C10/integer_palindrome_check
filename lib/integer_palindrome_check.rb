# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
require 'pry'
def is_palindrome(number)
  return false if number == nil || number < 0
  return true if number == 0

  reversed_num = 0  # n
  duplicate = number # n

  while duplicate > 0
    reversed_num *= 10
    last_num = duplicate % 10 # only contains 1 digit at a time
    reversed_num += last_num
    duplicate -= last_num
    duplicate /= 10
  end

  if number == reversed_num
    return true
  else
    return false
  end
end

#Time complexity: O(n) where n is the length/size of the input.
#Depending on how many digits the number is the while loop will
# continue to execute O(n - 1), but we drop the 1 because it is insignificant.

#Space complexity: O(n) where n is the length/size of the input.
# In this solution I defined 3 variables, 2 of which take
#up the same space as the input's length. The last_num variable only
#holds one digit at a time
