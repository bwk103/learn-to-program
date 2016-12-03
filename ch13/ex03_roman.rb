class Integer

  def new_roman

    thousand = self / 1000
    hundred = self % 1000 / 100
    ten = self  % 100 / 10
    one = self % 10

    result = "M" * thousand

    if hundred == 9
      result = result + "CM"
    elsif hundred == 4
      result = result + "CD"
    else
      result = result + "D" * (self % 1000 / 500)
      result = result + "C" * (self % 500 / 100)
    end

    if ten == 9
      result = result + "XC"
    elsif ten == 4
      result = result + "XL"
    else
      result = result + "L" * (self % 100 / 50)
      result = result + "X" * (self % 50 / 10)
    end

    if one == 9
      result = result + "IX"
    elsif one == 4
      result = result + "IV"
    else
      result = result + "V" * (self % 10 / 5)
      result = result + "I" * (self % 5 / 1)
    end
    result
  end
end

puts 7.new_roman
puts 101.new_roman
puts 91.new_roman
