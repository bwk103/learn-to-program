puts "What is your first name?"
first_name = gets.chomp
puts "Thanks, and your middle name...?"
middle_name = gets.chomp
puts "Great, and finally, what is your last name?"
last_name = gets.chomp
total_chars = (first_name + middle_name + last_name).length
puts "Did you know that in total, there are #{total_chars} letters in your name?"
