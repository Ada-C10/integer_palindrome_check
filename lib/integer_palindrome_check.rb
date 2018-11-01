# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
require 'pry'

def is_palindrome(number)

  return false if number == nil

  str_num = number.to_s

  return false if str_num[0] == "-"
  return true if str_num.length < 2

  temp_hash = {}
  i = 0

  while i < str_num.length do
    if temp_hash.key? str_num[i]
      temp_hash[str_num[i]] += 1
    else
      temp_hash[str_num[i]] = 1
    end
    i += 1
  end

  odd_char = 0

  temp_hash.each do |key, value|
    if value % 2 != 0
      odd_char += 1
    end
  end
  return odd_char > 1 ? false : true
end
