puts 'Hello, and thank you for taking the time to'
puts 'help me with this experiment. My experiment'
puts 'has to do with the way people feel about'
puts 'Mexican food.  Just think about Mexican food'
puts 'and try to answer every question honestly,'
puts 'with either a "yes" or a "no". My experiment'
puts 'has nothing to do with bed-wetting.'
puts


def ask_question (question)
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == "yes" || reply == "no"
      if reply  = "yes"
        return true
      else
       return false
      end
      break
    else
      puts "Please answer \"yes\" or \"no\"."
      puts
    end
  end
end


ask_question('Do you like eating tacos?')
ask_question('Do you like eating burritos?')
wets_bed = ask_question('Do you wet the bed?')
ask_question('Do you like eating chimichangas?')

puts 'Just a few more questions....'

ask_question('Do you like eating sopapillas?')


puts
puts 'DEBRIEFING'
puts 'Thank you for taking the time to help with'
puts 'this experiment.  In fact, this experiment'
puts 'has nothing to do with Mexican food. It is'
puts 'an experiement about bed-wetting. The Mexican'
puts 'food was just there to catch you off guard'
puts 'in the hopes that you would answer more'
puts 'honestly. Thanks again.'
puts
puts wets_bed
