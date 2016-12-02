Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'

# first find all of the pictures to be moved (in this case all .jpg on F drive).

pic_names = Dir['F:/**/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

# This is the counter. Let's start at 1.

pic_number = 1

pic_names.each do |name|
  print '.' # This is the progress bar.

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist?(new_name)
    puts "There is already a file with this name."
    puts "Do you wish to overwrite the original file? y/n"
    reply = gets.chomp
    if reply == 'y'
      File.rename name, new_name
    else
      exit()
    end
  else
    File.rename name, new_name
  end

  # Increment the counter...
  pic_number = pic_number + 1
end
puts
puts 'All done!'
