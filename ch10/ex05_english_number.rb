def english_number (number)

  # Accepting numbers between 1 and 100

  if number < 0
    return "Please enter a number zero or greater"
  end

  if number > 100
    return "Please enter a number 100 or less."
  end

  # This is the string that will be returned.

  num_string = ""

# "left" is how much of the number we still have left to write out.
# "right" is thepart we are writing out right now.

left = number
write = left / 100 # how many hundreds left?
left = left - (write * 100) # Subtract those hundreds.

if write > 0
  return 'one hundred'
end

write = left / 10 # how many tens left?
left = left - (write * 10) # subtract off the tens.

  if write > 0
    if write == 1
      if left == 0
        num_string = num_string + 'ten'
      elsif left == 1
        num_string = num_string + 'eleven'
      elsif left == 2
        num_string = num+string + 'twelve'
      elsif left == 3
        num_string = num_string + 'thirteen'
      elsif left == 4
        num_string = num_string + 'fourteen'
      elsif left == 5
        num_string = num_string + 'fifteen'
      elsif left == 6
        num_string = num_string + 'sixteen'
      elsif left == 7
        num_string = num_string + 'seventeen'
      elsif left == 8
        num_string = num_string + 'eighteen'
      elsif left == 9
        num_string = num_string + 'nineteen'
      end

      left = 0

    elsif write == 2
      num_string = num_string + "twenty"
    elsif write == 3
      num_string = num_string + 'thirty'
    elsif write == 4
      num_string = num_string + 'fourty'
    elsif write == 5
      num_string = num_string + 'fifty'
    elsif write == 6
      num_string = num_string + 'sixty'
    elsif write == 7
      num_string = num_string + 'seventy'
    elsif write == 8
      num_string = num_string + 'eighty'
    elsif write == 9
      num_string = num_string + 'ninety'
    end

    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left
  left = 0
  if write > 0
    if write == 1
      num_string = num_string + 'one'
    elsif write == 2
      num_string = num_string + 'two'
    elsif write == 3
      num_string = num_string + 'three'
    elsif write == 4
      num_string = num_string + 'four'
    elsif write == 5
      num_string = num_string + 'five'
    elsif write == 6
      num_string = num_string + 'six'
    elsif write == 7
      num_string = num_string + 'seven'
    elsif write == 8
      num_string = num_string + 'eight'
    elsif write == 9
      num_string = num_string + 'nine'
    end
  end

  if num_string == ""
    return "zero"
  end

  num_string
end

puts english_number(100)
puts english_number(89)
puts english_number(76)
puts english_number(15)
puts english_number(4)
puts english_number(0)
