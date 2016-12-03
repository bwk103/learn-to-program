class Die

  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat
    puts "What number would you like the die to land on?"
    cheat_num = gets.chomp.to_i
    if cheat_num < 1 || cheat_num > 6
      puts "You're cheating - not bending the laws of logic!"
      self.cheat
    else
      @number_showing = cheat_num
    end
  end
end

die = Die.new

puts die.showing
puts die.cheat
