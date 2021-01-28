# If　a = 1, b = 2, c = 3 ... z = 26
# Then l + o + v + e = 54
# and f + r + i + e + n + d + s + h + i + p = 108

# So friendship is twice stronger than love :-)
# The input will always be in lowercase and never be empty.

def words_to_marks(string)
  letters = ('a'..'z').to_a

  string.downcase.chars.map do |letter|
    letters.index(letter) + 1
  end.sum
end

puts words_to_marks("abc") == 6
puts words_to_marks("cba") == 6

# ---------------
