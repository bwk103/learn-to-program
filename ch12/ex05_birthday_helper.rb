# assign the string from input.txt to the variable 'readstring'

filename = ("./input.txt")
read_string = File.read filename


# convert the string into a hash containing the invididual names and dates of birth.

people = {}


read_string.each_line do |line|
line = line.chomp
first_comma = 0
while line[first_comma] != ',' && first_comma < line.length
  first_comma = first_comma +1
end

name = line[0..(first_comma - 1)]
date = line[-12..-1]

people[name] = date
end

# ask the user for a name from the list.

puts "Whose birthday would you like to know?"
name = gets.chomp
date = people[name]

if date == nil
  puts "Ooooh, I don't know that one..."
else
  puts date[0..5]
end
