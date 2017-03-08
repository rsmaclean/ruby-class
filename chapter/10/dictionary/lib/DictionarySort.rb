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

  def dictionary_sort sorted, unsorted
    if (unsorted.size == 0)
      return
    end
    add_to_sorted_array unsorted.pop, sorted
    dictionary_sort  sorted, unsorted
  end

end