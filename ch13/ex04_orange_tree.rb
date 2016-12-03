class OrangeTree

  def initialize
    @height = 0
    @age = 0
    @fruit = false
    @num_oranges = 0
  end

  def height
    return "The tree is currently #{@height} metres tall."
  end

  def age
    return "The tree is currently #{@age} years' old."
  end

  def orange_count
    return "The tree currently has #{@num_oranges} oranges growing on it."
  end

  def pick_an_orange
    puts "You try to pick an orange from the tree...."
    if @age <= 2
      return "....but the tree is too young to produce oranges!"
    else
      if @num_oranges == 0
        puts "...but there are no more oranges growing on the tree this year"
      else
        @num_oranges = @num_oranges - 1
        puts "....and you find the perfect piece of fruit! Mmmmmmm that is one delicious orange!"
      end
    end
  end

  def one_year_passes
    puts "A whole year passes...."
    if @age >= 8
      puts "The tree has died.  Sad face."
      exit
    else
      @num_oranges = 0
      @age = @age + 1
      @height = @height + 2
      fruit_grow?

      if @fruit
        @num_oranges = 20
        if @age > 5
          @num_oranges = @num_oranges + 20
        end
      end
    end
  end

  def cheat
    @age = 14
  end

  private

  def fruit_grow?
    if @age <= 2
      @fruit = false
    else
      @fruit = true
    end
  end
end

tree = OrangeTree.new
