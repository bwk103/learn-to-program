line_width = 60
var1 = "Chapter 1: Getting Started"
var2 = "Chapter 2: Numbers"
var3 = "Chapter 3: Letters"

puts
puts "Table of Contents".center(line_width)
puts
puts var1.ljust(line_width / 2) + "page   1".rjust(line_width / 2)
puts var2.ljust(line_width / 2) + "page   9".rjust(line_width / 2)
puts var3.ljust(line_width / 2) + "page  13".rjust(line_width / 2)
