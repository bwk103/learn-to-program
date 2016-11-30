hours_in_a_year = 24 * 365
puts "There are #{hours_in_a_year} hours in a year."

minutes_in_a_decade = (hours_in_a_year * 60) * 10
puts "There are #{minutes_in_a_decade} minutes in a decade."

seconds_per_year = ((hours_in_a_year * 60) * 60)

age_in_seconds = seconds_per_year * 31
puts "I am approximately #{age_in_seconds} seconds old."

chris_pine_age_in_seconds = 1160000000
puts "Chris Pine is #{chris_pine_age_in_seconds / seconds_per_year} years old."
