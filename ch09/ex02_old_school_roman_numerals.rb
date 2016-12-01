
def old_roman(number)
  result = ""

  result << "M" * (number / 1000)
  result << "D" * (number % 1000 / 500)
  result << "C" * (number % 500 / 100)
  result << "L" * (number % 100 / 50)
  result << "X" * (number % 50 / 10)
  result << "V" * (number % 10 / 5)
  result << "I" * (number % 5 / 1)

  result
end


puts old_roman(3000)
puts old_roman(100)
puts old_roman(56)
puts old_roman(9)
puts old_roman(3)
