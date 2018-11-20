# Returns true if the input positive integer number forms a palindrome.
# Returns false otherwise.
def is_palindrome(number)
  # check if nil
  if number.nil?
   return false
  else
    # create placeholder to copy reverse num
    reverse_num = 0
    # copy the original number
    orig = number
    # reduce integer digit by digit until nothing left
    while number > 0
      # get the remainder by modulo 10 and collect that number
      remainder = number % 10 # 34 % 10 => 4
      # apply that remainder to the first digit of the
      # reversed number must multiply self by 10 to get back
      reverse_num = reverse_num * 10 + remainder #  4..3
      # divide the actual number by 10
      # to remove the final digit and keep
      number = number / 10 # 34/10 => 3
    end

   # p reverse_num
   # p number
   # p orig
   # check if reversed == number
   reverse_num == orig ? true : false
 end

end

p is_palindrome(132)

# Time O(n) = linear as the number of loops is dependent on the size
# of the number passed in
# Space O(n) = linear as the size of storage depends on the size
# of the integer that gets copied