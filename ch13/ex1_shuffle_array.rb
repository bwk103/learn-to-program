
class Array

  def shuffle

    arr = self
    shuffle_list = []

    while arr.length > 0
      rand_index = rand(arr.length)

      index = 0
      new_arr = []

      arr.each do |item|
        if index == rand_index
          shuffle_list.push(item)
        else
          new_arr.push item
        end

        index += 1
      end
      arr = new_arr
    end
    shuffle_list
  end
end

puts [1, 2, 3, 4, 5].shuffle
puts ["this", "is", "the", "first", "word"].shuffle
