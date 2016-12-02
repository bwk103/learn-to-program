def roman_to_int(string)

  roman_chars = {"M" => 1000, "D" => 500, "C" => 100,
                "L" => 50, "X" => 10, "V" => 5, "I" => 1}

  total = 0
  prev = 0
  index = string.length - 1

  while index >= 0
    c = string[index].upcase
    index = index - 1
    val = roman_chars[c]
    if !val
      puts "This is not a valid roman numeral!"
      return
    end

    if val < prev
      val = val * -1
    else
      prev = val
    end
    total = total + val
  end

  total
end


puts roman_to_int("mcmxcix")
puts roman_to_int("CCCLXV")
