puts "Can I please have a starting year...."
start_year = gets.chomp.to_i
puts "Thanks, can I now have an ending year..."
end_year = gets.chomp.to_i
years = (start_year..end_year).to_a

leap_years = []

years.each do |year|
  if year % 4 == 0
    if year % 100 == 0 && year % 400 == 0
      leap_years.push(year)
    elsif year % 100 == 0 && year % 400 != 0
      next
    else
      leap_years.push(year)
    end
  end
end

puts "*" * 50
puts "Thank you.  There were " + leap_years.length.to_s + " leap years in that period. They were:"
puts leap_years.join(", ")
