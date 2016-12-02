Dir.chdir "/Users/***/***/itunes/iTunes Media/Music"

def shuffle (arr)
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


songs = shuffle(Dir["**/*.m4a"])

File.open 'test_playlist.m3u', 'w' do |f|
  songs.each do |song|
    f.write song+"\n"
  end
end

puts 'Done!'
