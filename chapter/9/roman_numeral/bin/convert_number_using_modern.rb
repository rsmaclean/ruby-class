require '../lib/ModernRomanConverter'

def get_number()
  number = -1
  while number < 0 do
    puts "Enter a number: "
    number = gets.chomp.to_i
    if !number.between?(1,3000)
      puts "   You've entered a invalid number!  Enter a number between 1 and 3000."
      number = -1
    end
  end
  number
end

number = get_number()

converter = ModernRomanConverter.new
roman_numeral = converter.get_roman_numeral(number)
puts roman_numeral




