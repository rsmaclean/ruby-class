require 'RomanConverter'

class TestRomanConverter < MiniTest::Test

  def test_invalid_roman_numeral_input
     converter = RomanConverter.new
     assert_equal('Invalid Roman Numeral!', converter.convert_roman_numeral(''), "An error should be given for a empty string")
     assert_equal('Invalid Roman Numeral!', converter.convert_roman_numeral('LXXIIQ'), "An error should be given for a string with both roman numerals and other letters")
     assert_equal('Invalid Roman Numeral!', converter.convert_roman_numeral('ABC'), "An error should be given for a string with both only non roman numerals")
   end

  def test_single_digit_conversions
    converter = RomanConverter.new
    assert_equal(3, converter.convert_roman_numeral('iii'), "The number 3 should be converted from roman numeral III")
    assert_equal(4, converter.convert_roman_numeral('iv'), "The number 4 should be converted from roman numeral IV")
    assert_equal(5, converter.convert_roman_numeral('v'), "The number 5 should be converted from roman numeral V")
    assert_equal(9, converter.convert_roman_numeral('ix'), "The number 9 should be converted from roman numeral IX")
  end

  def test_double_digit_conversions
    converter = RomanConverter.new
    assert_equal(10, converter.convert_roman_numeral('X'), "The number 5 should be converted from roman numeral X")
    assert_equal(45, converter.convert_roman_numeral('XLV'), "The number 45 should be converted from roman numeral XLV")
    assert_equal(72, converter.convert_roman_numeral('LXXII'), "The number 72 should be converted from roman numeral LXXII")
    assert_equal(99, converter.convert_roman_numeral('XCIX'), "The number 99 should be converted from roman numeral XCIX")
  end


  def test_triple_digit_conversions
    converter = RomanConverter.new
    assert_equal(100, converter.convert_roman_numeral('c'), "The number 100 should be converted from roman numeral C")
    assert_equal(275, converter.convert_roman_numeral('cclxxv'), "The number 275 should be converted from roman numeral CCLXXV")
    assert_equal(541, converter.convert_roman_numeral('dxli'), "The number 541 should be converted from roman numeral DXLI")
    assert_equal(999, converter.convert_roman_numeral('cmxcix'), "The number 999 should be converted from roman numeral CMXCIX")
  end

  def test_four_digit_conversions
    converter = RomanConverter.new
    assert_equal(1000, converter.convert_roman_numeral('M'), "The number 1000 should be converted from roman numeral M")
    assert_equal(1618, converter.convert_roman_numeral('MDCXVIII'), "The number 1618 should be converted from roman numeral MDCXVIII")
    assert_equal(2444, converter.convert_roman_numeral('MMCDXLIV'), "The number 2444 should be converted from roman numeral MMCDXLIV")
    assert_equal(3000, converter.convert_roman_numeral('MMM'), "The number 3000 should be converted from roman numeral MMM")
  end

end