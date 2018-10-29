# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if !number || number < 0
  return true if number == 0

  string = "#{number}"

  return true if string.length == 1

  min = 0
  max = string.length - 1
  check = false

  while min <= max
    if string[min] == string[max]
      check = true
    elsif string[min] != string[max]
      check = false
      return check
    end
    min += 1
    max -= 1
  end

  return check
end
