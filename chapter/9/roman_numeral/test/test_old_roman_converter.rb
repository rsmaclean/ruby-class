require 'OldRomanConverter'

class TestOldRomanConverter < MiniTest::Test

  def test_invalid_number_input
    converter = OldRomanConverter.new
    assert_equal('Invalid Number', converter.get_roman_numeral(0), "An error should be given for a number below 1")
    assert_equal('Invalid Number', converter.get_roman_numeral(3001), "An error should be given for a number above 3000")
  end

  def test_single_digit_conversions
    converter = OldRomanConverter.new
    assert_equal('III', converter.get_roman_numeral(3), "The number 3 should convert to roman numeral III")
    assert_equal('IIII', converter.get_roman_numeral(4), "The number 4 should convert to roman numeral IIII")
    assert_equal('V', converter.get_roman_numeral(5), "The number 5 should convert to roman numeral V")
    assert_equal('VIIII', converter.get_roman_numeral(9), "The number 9 should convert to roman numeral VIIII")
  end

  def test_double_digit_conversions
    converter = OldRomanConverter.new
    assert_equal('X', converter.get_roman_numeral(10), "The number 5 should convert to roman numeral X")
    assert_equal('XXXXV', converter.get_roman_numeral(45), "The number 45 should convert to roman numeral XXXXV")
    assert_equal('LXXII', converter.get_roman_numeral(72), "The number 72 should convert to roman numeral LXXII")
    assert_equal('LXXXXVIIII', converter.get_roman_numeral(99), "The number 99 should convert to roman numeral LXXXXVIIII")
  end


  def test_triple_digit_conversions
    converter = OldRomanConverter.new
    assert_equal('C', converter.get_roman_numeral(100), "The number 5 should convert to roman numeral C")
    assert_equal('CCLXXV', converter.get_roman_numeral(275), "The number 45 should convert to roman numeral CCLXXV")
    assert_equal('DXXXXI', converter.get_roman_numeral(541), "The number 72 should convert to roman numeral DXXXXI")
    assert_equal('DCCCCLXXXXVIIII', converter.get_roman_numeral(999), "The number 99 should convert to roman numeral DCCCCLXXXXVIIII")
  end

  def test_four_digit_conversions
    converter = OldRomanConverter.new
    assert_equal('M', converter.get_roman_numeral(1000), "The number 5 should convert to roman numeral M")
    assert_equal('MDCXVIII', converter.get_roman_numeral(1618), "The number 45 should convert to roman numeral MDCXVIII")
    assert_equal('MMCCCCXXXXIIII', converter.get_roman_numeral(2444), "The number 72 should convert to roman numeral MMCCCCXXXXIIII")
    assert_equal('MMM', converter.get_roman_numeral(3000), "The number 99 should convert to roman numeral MMM")
  end

end