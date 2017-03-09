require '../lib/DictionarySort'

unsorted = ['one','spring','lamp','pencil','cord','Poster','Dallas','stick']

puts 'unsorted: ' << unsorted.to_s

sort = DictionarySort.new
sorted = sort.dictionary_sort(unsorted)

puts 'sorted: ' << sorted.to_s
