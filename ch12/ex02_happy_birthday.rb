def happy_birthday

  months = {January: 1, February: 2, March: 3, April: 4,
            May: 5, June: 6, July: 7, August: 8, September: 9,
            October: 10, November: 11, December: 12}

  puts "What year were you born?"
  year = gets.chomp.to_i
  puts "Thanks.  And which month?"
  month = gets.chomp.capitalize.to_sym
  puts "Great. And, finally, which day?"
  day = gets.chomp.to_i

  birthday = Time.local(year, months[month], day)

  age_in_seconds = (Time.now - birthday).to_i

  age = age_in_seconds / 31536000

   puts "Thank you.  I believe that you are #{age} years old!"

   puts "SPANK!\n" * age

end


puts happy_birthday
