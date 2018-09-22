# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number.nil?
  number = number.to_s


  j = number.length - 1
  i = 0

  while i < j
    i += 1 while number[i] == " "

    j -= 1  while number[j] == " "


    return false if number[i] != number[j]
    i += 1
    j -= 1
  end
  return true
end
