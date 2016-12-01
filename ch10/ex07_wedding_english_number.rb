def wedding_number (number)

  if number < 0
    return "Please enter a number that isn't negative."
  end
  if number == 0
    return 'zero'
  end

  # This is the string that will be returned.

  num_string = ""
  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens_place = ["ten", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

# "left" is how much of the number we still have left to write out.
# "right" is thepart we are writing out right now.

left = number
write = left / 1000000000000
left = left - (write * 1000000000000)

if write > 0
  trillions = wedding_number(write)
  num_string = num_string + trillions + ' trillion'
  if left > 0
    num_string = num_string + " and "
  end
end

write = left / 1000000000
left = left - (write * 1000000000)

if write > 0
  billions = wedding_number(write)
  num_string = num_string + billions + " billion"
  if left > 0
    num_string = num_string + " and "
  end
end

write = left / 1000000
left = left - (write * 1000000)

if write > 0
  millions = wedding_number write
  num_string = num_string + millions + " million"
  if left > 0
    num_string = num_string + " and "
  end
end

write = left / 1000
left = left - write * 1000
if write > 0
  thousands = wedding_number(write)
  num_string = num_string + thousands + " thousand"
  if left > 0
    num_string = num_string + " and "
  end
end

write = left / 100 # how many hundreds left?
left = left - (write * 100) # Subtract those hundreds.

if write > 0
  hundreds = wedding_number write
  num_string = num_string + hundreds + " hundred"
  if left > 0
    num_string = num_string + " and "
  end
end

write = left / 10 # how many tens left?
left = left - (write * 10) # subtract off the tens.

  if write > 0
    if ((write == 1) && (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      num_string = num_string + " and "
    end
  end

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  num_string
end

puts wedding_number(0)
puts wedding_number(9)
puts wedding_number(10)
puts wedding_number(11)
puts wedding_number(17)
puts wedding_number(32)
puts wedding_number(88)
puts wedding_number(99)
puts wedding_number(100)
puts wedding_number(101)
puts wedding_number(234)
puts wedding_number(3211)
puts wedding_number(999999)
puts wedding_number(1004001)
puts wedding_number(1000000000001)
puts wedding_number(1000000001)
puts wedding_number(10000)
puts wedding_number(100000)
