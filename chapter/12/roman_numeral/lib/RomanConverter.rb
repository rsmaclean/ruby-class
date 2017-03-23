class RomanConverter
  @@romanNumerals= {
      1 => 'I',
      5 => 'V',
      10 => 'X',
      50 => 'L',
      100 => 'C',
      500 => 'D',
      1000 => 'M'
  }

  def isValidNumeral(numeral)
    if (numeral.nil? || numeral.empty?)
      return false
    end
    numeral.upcase.split("").each { |c|
      if (@@romanNumerals.key(c).nil?)
        return false
      end
    }
    true
  end

  def updateNumber(currentNumeralValue, nextNumeralValue)
    if (currentNumeralValue < nextNumeralValue)
      @number -= currentNumeralValue
    else
      @number += currentNumeralValue
    end
  end

  def convert_roman_numeral(romanNumeral)
    if (!isValidNumeral(romanNumeral))
      return "Invalid Roman Numeral!"
    end

    @number = 0
    romanNumeral.split("").each_index { |index|
      break if index == romanNumeral.length - 1
      updateNumber(@@romanNumerals.key(romanNumeral[index].upcase),
                   @@romanNumerals.key(romanNumeral[index+1].upcase))
    }

    @number + @@romanNumerals.key(romanNumeral[-1].upcase)
   end
end


