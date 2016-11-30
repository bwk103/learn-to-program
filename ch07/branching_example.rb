puts "Hello and welcome to seventh grade English."
puts "My name is Mrs Gabbard. And your name is...?"
name = gets.chomp

if name == name.capitalize
  puts "Please take a seat, #{name}"
else
  puts name + "? Don't you mean " + name.capitalize + "."
  puts "Don't you even know how to spell your own name?"
  reply = gets.chomp

  if reply.downcase == "yes"
    puts "Okay then, sit down please."
  else
    puts "GET OUT!!"
  end
end
