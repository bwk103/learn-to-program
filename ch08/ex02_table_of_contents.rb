line_width = 60
info = ["Table of Contents", "Chapter 1: Getting Started", "page  1", "Chapter 2: Numbers", "page  9", "Chapter 3: Letters", "page 13"]

puts
puts info[0].center(line_width)
puts
puts info[1].ljust(line_width / 2) + info[2].rjust(line_width / 2)
puts info[3].ljust(line_width / 2) + info[4].rjust(line_width / 2)
puts info[5].ljust(line_width / 2) + info[6].rjust(line_width / 2)
puts
