class Dragon

  def initialize (name)
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intenstine = 0
    start

    puts "#{name} is born."
  end

  def start
    puts
    puts "CONGRATULATIONS! You are the prowd owner of a new baby dragon, #{@name}."
    options
  end

  def options
  puts
  puts "*" * 80
  puts "How would you like to interact with #{@name}"
  puts "FEED #{@name}."
  puts "WALK #{@name}."
  puts "Put #{@name} to BED"
  puts "TOSS #{@name} in the air."
  puts "ROCK #{@name} to sleep."
  puts "EXIT to quit."
  puts "*" * 80
  choice = gets.chomp.upcase
  if choice == "FEED"
    feed
  elsif choice == "WALK"
    walk
  elsif choice == "BED"
    put_to_bed
  elsif choice == "TOSS"
    toss
  elsif choice == "ROCK"
    rock
  elsif choice == "EXIT"
    exit
  else
    puts "I'm sorry, I didn't quite catch that, try again."
    options
  end
end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
    options
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intenstine = 0
    passage_of_time
    options
  end

  def put_to_bed
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snored, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
    options
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts "He giggles, which singes your eyebrows."
    passage_of_time
    options
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "...But wakes up when you stop."
    end
    options
  end

  private

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intenstine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly = @stuff_in_belly -1
      @stuff_in_intenstine = @stuff_in_intenstine + 1
    else
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit
    end
    if @stuff_in_intenstine >= 10
      @stuff_in_intenstine = 0
      puts "Whoops! #{@name} has an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} does the potty dance..."
    end
  end
end

pet = Dragon.new("Norbert")
