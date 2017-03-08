require 'minitest/autorun'
require 'DictionarySort'

class TestDictionarySort < MiniTest::Test

  def setup
    @sorted = []
  end

  def test_lowercase_word_sorting
    unsorted = ['aaaa','zzzz','mmmm','kkkk']
    sort = DictionarySort.new
    sort.dictionary_sort(@sorted, unsorted)
    assert_equal(["aaaa", "kkkk", "mmmm", "zzzz"],@sorted, "lower case words should be sorted in ascending order")
  end

  def test_uppercase_word_sorting
    unsorted = ['BBBB','XXXX','GGGG','SSSS']
    sort = DictionarySort.new
    sort.dictionary_sort(@sorted, unsorted)
    assert_equal(["BBBB", "GGGG", "SSSS", "XXXX"],@sorted, "upper case words should be sorted in ascending order")
  end

  def test_mixed_word_sorting
    unsorted = ['aaaa','XXXX','kkkk','SSSS','mmmm','GGGG','zzzz','BBBB']
    sort = DictionarySort.new
    sort.dictionary_sort(@sorted, unsorted)
    assert_equal(['aaaa','BBBB','GGGG','kkkk','mmmm','SSSS','XXXX','zzzz'],@sorted, "mixed case words should be sorted in ascending order")
  end

  def test_sorting_of_empty_array
    unsorted = []
    sort = DictionarySort.new
    sort.dictionary_sort(@sorted, unsorted)
    assert_equal([],@sorted, "empty input array should not cause a error")
  end
end