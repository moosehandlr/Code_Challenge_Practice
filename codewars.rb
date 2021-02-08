# If　a = 1, b = 2, c = 3 ... z = 26
# Then l + o + v + e = 54
# and f + r + i + e + n + d + s + h + i + p = 108

# So friendship is twice stronger than love :-)
# The input will always be in lowercase and never be empty.

def words_to_marks(string)
  letters = ('a'..'z').to_a
  string.downcase.chars.map {|letter| letters.index(letter) + 1}.sum
end

puts words_to_marks("abc") == 6
puts words_to_marks("cba") == 6
# ---------------
# In this kata, you are asked to square every digit of a number and concatenate them.
# For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.

def square_digits(num)
  num.to_s.split('').map{|int| int.to_i ** 2}.join.to_i
end

puts square_digits(3458) == 9162564
