bottles = 99

while bottles > 0
  puts bottles.to_s + " bottles of beer on the wall, " + bottles.to_s + " bottles of beer."
  puts "You take one down, pass it around, " + (bottles - 1).to_s + " bottles of beer on the wall."
  puts "*" * 50
  bottles -= 1

  if bottles == 1
    puts bottles.to_s + " bottle of beer on the wall, " + bottles.to_s + " bottle of beer."
    puts "You take one down, pass it around, 0 bottles of beer on the wall."
    puts "THE END!"
    break
  end
end
