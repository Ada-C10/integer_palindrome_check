# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  string_number = number.to_s
  if number == nil
    return false
  elsif number < 0
    return false
  elsif string_number.length == 0
    return true
  elsif string_number.length == 1
    return true
  else
    x = 0
    y = string_number.length - 1
    start = string_number[x]
    ending = string_number[y]

    until x > y
      if start == ending
        x += 1
        start = string_number[x]
        y -= 1
        ending = string_number[y]
      else
        return false
      end
    end
    return true
  end
  # raise NotImplementedError
end


test = is_palindrome(13531)
puts "#{test}"
