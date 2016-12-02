
 # range literal
letters = ('a'..'c')

# converting range to an array
puts(['a', 'b', 'c'] == letters.to_a)

# iterating over a range

('A'..'Z').each do |letter|
  print letter
end
puts
god_bless_the_70s = 1970..1979
puts god_bless_the_70s.min
puts god_bless_the_70s.max
puts god_bless_the_70s.include?(1979)
puts god_bless_the_70s.include?(1980)
puts god_bless_the_70s.include?(1974.5)

prof = "We tore the universe a new space-hole, alright!"
puts prof[12, 8]
puts prof[12..19]
puts

def is_avi filename
  filename.downcase[-4..-1] == ".avi"
end

puts is_avi("DANCEMONKEYBOY.AVI")
puts is_avi("toilet_paper_fiasco.jpg")
