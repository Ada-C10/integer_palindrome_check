# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  if number == nil
    return false
  elsif number < 0
    return false
  end

  reversed_num = 0
  num_copy = number

  while num_copy > 0
    last_digit = num_copy % 10
    reversed_num = reversed_num*10 + last_digit # increase places
    num_copy /= 10 #<-- edit the value itself
  end

  return number == reversed_num
end
