class ModernRomanConverter

  def get_ones_label(num)
    if num.to_s.size == 1
      "I"
    elsif num.to_s.size == 2
      "X"
    elsif num.to_s.size == 3
      "C"
    elsif num.to_s.size == 4
      "M"
    else
      ""
    end
  end

  def get_fives_label(num)
    if num.to_s.size == 1
      "V"
    elsif num.to_s.size == 2
      "L"
    elsif num.to_s.size == 3
      "D"
    else
      ""
    end
  end

  def convert_number(digit, divisor)
    if (digit == 4)
      current_label = get_ones_label(divisor);
      next_label = get_fives_label(digit+1*divisor);
      return current_label<<next_label
    elsif (digit == 9)
      current_label = get_ones_label(divisor);
      next_label = get_ones_label((digit+1)*divisor);
      return current_label<<next_label
    else
      get_fives_label(divisor) * (digit/5) << get_ones_label(divisor) * (digit%5)
    end
  end

  def get_roman_numeral(number)
    if !number.between?(1,3000)
      return "Invalid Number"
    end

    divisor = 1
    roman_numeral = Array.new
    number.to_s.split('').reverse.each do  |digit|
      roman_numeral.push(convert_number(digit.to_i, divisor))
      divisor *= 10
    end
    roman_numeral.reverse.join
  end

end


