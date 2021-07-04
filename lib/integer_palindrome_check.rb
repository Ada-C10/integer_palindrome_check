# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  # raise NotImplementedError
  return false if number == nil ||  number < 0 
  return true if number < 10 || number == 0

  i = number
  num = []
  num_reverse = []

  while i > 0 #while it is a pos num
    digit = i % 10 #digit is the number modulo 10
    i /= 10 #divide i by 10 to remove or 'pop' last digit
    num_reverse << digit #push digit to reverse array
    num << digit #shovel digit to num array (to be reversed below)
  end

  num = array_reverse(num)

  return num == num_reverse ? true : false

end

#helper method for reversing array
def array_reverse(array)
  i = array.length - 1
  j = 0

  while j < i do
    temp = array[i]
    array[i] = array[j]
    array[j] = temp
    i -= 1
    j += 1
  end
  return array
end

is_palindrome(1001)

# [[log-base10(100) = 2] = [10 * 10 = 100]]
