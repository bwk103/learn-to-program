
def new_roman(number)

  thousand = number / 1000
  hundred = number % 1000 / 100
  ten = number  % 100 / 10
  one = number % 10

  result = "M" * thousand

  if hundred == 9
    result = result + "CM"
  elsif hundred == 4
    result = result + "CD"
  else
    result = result + "D" * (number % 1000 / 500)
    result = result + "C" * (number % 500 / 100)
  end

  if ten == 9
    result = result + "XC"
  elsif ten == 4
    result = result + "XL"
  else
    result = result + "L" * (number % 100 / 50)
    result = result + "X" * (number % 50 / 10)
  end

  if one == 9
    result = result + "IX"
  elsif one == 4
    result = result + "IV"
  else
    result = result + "V" * (number % 10 / 5)
    result = result + "I" * (number % 5 / 1)
  end
  result
end


puts new_roman(3542)
puts new_roman(100)
puts new_roman(56)
puts new_roman(9)
puts new_roman(3)
