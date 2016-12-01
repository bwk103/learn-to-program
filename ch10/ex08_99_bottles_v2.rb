def english_number (number)

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
  trillions = english_number(write)
  num_string = num_string + trillions + ' trillion'
  if left > 0
    num_string = num_string + " "
  end
end

write = left / 1000000000
left = left - (write * 1000000000)

if write > 0
  billions = english_number(write)
  num_string = num_string + billions + " billion"
  if left > 0
    num_string = num_string + " "
  end
end

write = left / 1000000
left = left - (write * 1000000)

if write > 0
  millions = english_number write
  num_string = num_string + millions + " million"
  if left > 0
    num_string = num_string + " "
  end
end

write = left / 1000
left = left - write * 1000
if write > 0
  thousands = english_number(write)
  num_string = num_string + thousands + " thousand"
  if left > 0
    num_string = num_string + " "
  end
end

write = left / 100 # how many hundreds left?
left = left - (write * 100) # Subtract those hundreds.

if write > 0
  hundreds = english_number write
  num_string = num_string + hundreds + " hundred"
  if left > 0
    num_string = num_string + " "
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
      num_string = num_string + "-"
    end
  end

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  num_string
end

def bottles(number)
  word_num = english_number(number).capitalize
  next_num = english_number(number - 1).capitalize
  if number == 1
    puts word_num + " bottle of beer on the wall, " + word_num + " bottle of beer."
    puts "You take one down, pass it around, " + next_num + " bottles of beer on the wall."
    puts "THE END!"
    exit

  else
    while number > 0
      puts word_num + " bottles of beer on the wall, " + word_num + " bottles of beer."
      puts "You take one down, pass it around, " + next_num + " bottles of beer on the wall."
      puts "*" * 50
      bottles(number - 1)

    end
  end
end

puts bottles(763)
