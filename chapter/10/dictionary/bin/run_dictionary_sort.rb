require '../lib/DictionarySort'

unsorted = ['one','spring','lamp','pencil','cord','Poster','Dallas','stick']
sorted = []

puts 'sorted: ' << sorted.to_s
puts 'unsorted: ' << unsorted.to_s

sort = DictionarySort.new
sort.dictionary_sort(sorted, unsorted)

puts 'sorted: ' << sorted.to_s
puts 'unsorted: ' << unsorted.to_s
