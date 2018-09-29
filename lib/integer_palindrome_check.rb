# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)

  if number.nil?
    return false
  end

  if number == ""
    return true
  end

  # Convert to a string
  number = number.to_s

  # Return false if negative
  if number.include?("-")
    return false
  end

  # Get rid of white space if white space exists
  if number.gsub!(/\W/, "") != nil
    number.gsub!(/\W/, "")
  end

  # Compare start/end elements
  i = 0
  j = number.length - 1
  while i < number.length / 2

    if number[i] != number[j]
      return false
    end
    i += 1
    j -= 1
  end
  return true
end

# Time: Going through half of number = O(n)
# Space: Same number of variables no matter the size of n = O(1) 
