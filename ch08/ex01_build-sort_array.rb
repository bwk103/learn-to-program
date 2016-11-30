word_list = []

while true
  puts "Give me a word..."
  word = gets
  if word == "\n"
    break
  else
    word_list.push(word.chomp.capitalize)
  end
end


puts
puts "Thank you.  Here is a list of the words that you provided, in alphabetical order:"

puts word_list.sort
