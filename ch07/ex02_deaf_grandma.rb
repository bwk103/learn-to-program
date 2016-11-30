bye_count = 0
while true
  puts "Say something to Grandma...."
  chat = gets.chomp
  if chat == chat.upcase
    if chat == "BYE" && bye_count < 2
      bye_count += 1
    elsif chat == "BYE" && bye_count == 2
      puts "OH, GOING SO SOON? OKAY THEN, BYE BYE!"
      puts "*" * 50
      break
    else
      puts "No, NOT SINCE " + (1929 + rand(21)).to_s + "!"
      puts "*" * 50
      bye_count = 0
    end
  else
    puts "HUH?! SPEAK UP SONNY!"
    bye_count = 0
    puts "*" * 50
  end
end
