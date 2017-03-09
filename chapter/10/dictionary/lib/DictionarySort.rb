class DictionarySort

  def add_to_sorted_array word, sorted
    isInserted = false
    sorted.each_with_index do |sorted_word, index|
      if (word.downcase <= sorted_word.downcase)
        sorted.insert(index, word)
        isInserted = true
        break
      end
    end

    if (!isInserted)
      sorted.push(word)
    end
  end

  def sort sorted, unsorted
    if (unsorted.size == 0)
      return
    end
    add_to_sorted_array unsorted.pop, sorted
    sort  sorted, unsorted
  end

  def dictionary_sort words
    sorted = []
    sort sorted,  words
    sorted
  end

end