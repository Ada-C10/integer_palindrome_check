#Time complexity for this is O(n) because the amount of time it will take to run
#through the while loops linearly increases with the number of digits that the integer has
#Space complexity for this is O(1) because we only need to store a couple variables,
# regardless of the size of the number.

def is_palindrome(number)
  return false if number == nil
  return false if number < 0

  #this first loop is figuring out the power of 10 that we'll need to start with
  #to get the left most digit from the number. Dividing by just 10, for example,
  #will remove the right most digit, but by the time we get our number to be less than 10 we
  #will have found the power that will remove all digits except the left most digit.
  divisor = 1
  while number/divisor >= 10
    divisor *= 10
  end


  while number != 0
    left = number / divisor
    right = number % 10
    if left != right
      return false
    end
    # this line chops off the left most digit (number % power of 10) and the
    # right most digit ( / 10)
    number = (number % divisor) / 10
    # this takes our power of ten down two places because we have shortened our number by two places
    divisor = divisor / 100
  end

  return true
end


#Time complextiy is O(n)
#???? Is space complexity for this O(n) because you have to allocate n characters
### to store the reversed integer as string, where n is the maximum number of digits??
# def is_palindrome(number)
#   return false if number == nil
#   return false if number < 0
#
#   number = number.to_s
#
#   i = 0
#   j = number.length - 1
#   while i < j
#     if number[i] != number[j]
#       return false
#     end
#     i += 1
#     j -= 1
#   end
#
#   return true
# end
