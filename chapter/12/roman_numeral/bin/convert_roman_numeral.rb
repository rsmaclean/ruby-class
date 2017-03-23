require '../lib/RomanConverter'

@converter = RomanConverter.new

def get_roman_number()
    roman_numeral = nil
    while roman_numeral.nil?
        puts "Enter a roman numeral: "
        roman_numeral = gets.chomp.to_s
        if !@converter.isValidNumeral(roman_numeral)
            puts "   You've entered a invalid Roman numeral!"
            roman_numeral = nil
        else
          return roman_numeral
        end
    end
end

roman_numeral = get_roman_number()
number = @converter.convert_roman_numeral(roman_numeral)
puts "This translates to: #{number}"


