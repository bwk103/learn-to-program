
# assign the variable time_born to the Time value representing my birthday.

time_born = Time.local(1985, 8, 9, 6, 8)

# assign the variable time_now to the time that the program is run.

time_now = Time.new

# assign the bariable current_age to calculate the difference in time_born and time_now.

current_age = (time_now - time_born).to_i

# assign variable countdown to the value of one billion, minus my current_age.

countdown = (1000000000 - current_age)

# add value assigned to countdown to current time to obtain year, month, day, hour, minute, second that I become 1 billion seconds old.

puts time_now + countdown
