def factorial (number)
  if number < 0
    puts "You can't take the factorial of a negative number,"
  end

  if number <= 1
    1
  else
    number * factorial(number - 1)
  end
end

puts factorial(5)
puts factorial(3)
