# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time Complexity: O(n) + O(n/2) = O(3n/2) = O(n)
# Space Complexity: O(5) = O(1)
# For space complexity, I currently have variable i, j, length, first_digit, and last_digit storing integers

def is_palindrome(number)
  return false if number == nil || number < 0

  i = 0
  j = number
  length = 0

  while j > 0
    j /= 10
    length += 1
  end

  while i < length do
    first_digit = (number / (10 ** (length - 1))) % 10
    last_digit = (number / (10 ** i)) % 10
    return false if first_digit != last_digit

    i += 1
    length -= 1
  end

  return true
end
